<template>
  <div>
    <sticky-top>
      <div class="title">
        <span>{{ isCreate ? '添加BannerItem' : '修改BannerItem' }}</span>
        <span class="back" @click="back"> <i class="iconfont icon-fanhui"></i> 返回 </span>
        <el-divider></el-divider>
      </div>
    </sticky-top>
    <div class="container">
      <div class="wrap">
        <el-row>
          <el-col :lg="16" :md="20" :sm="24" :xs="24">
            <el-form :model="form" status-icon ref="form" label-width="100px" @submit.native.prevent>
              <el-form-item label="名称" prop="name">
                <el-input size="medium" v-model="form.name" placeholder="请填写名称"></el-input>
              </el-form-item>
              <!-- <el-form-item label="关键字" prop="keyword">
                <el-input size="medium" v-model="form.keyword" placeholder="请填写关键字"></el-input>
              </el-form-item> -->
              <el-form-item label="类型" prop="type">
                <el-autocomplete
                  @focus="loadTypeSuggestions"
                  popper-class="my-autocomplete"
                  class="inline-input"
                  v-model="form.type_name"
                  :fetch-suggestions="queryTypeSearch"
                  placeholder="请填写所属分类"
                  @select="handleTypeSelect"
                >
                  <template #default="{ item }">
                    <span class="id">id： {{ item.id }}</span>
                    <span class="name"> 名称：{{ item.name }}</span>
                  </template>
                </el-autocomplete>
              </el-form-item>
              <el-form-item label="主题" prop="theme_name">
                <el-autocomplete
                  @focus="loadThemeSuggestions"
                  popper-class="my-autocomplete"
                  class="inline-input"
                  v-model="form.theme_name"
                  :fetch-suggestions="queryThemeSearch"
                  placeholder="请填写主题"
                  @select="handleThemeSelect"
                >
                  <template #default="{ item }">
                    <span class="id">id： {{ item.id }}</span>
                    <span class="name"> 名称：{{ item.name }}</span>
                  </template>
                </el-autocomplete>
              </el-form-item>
              <el-form-item label="Spu" prop="spu_name">
                <el-autocomplete
                  @focus="loadSpuSuggestions"
                  popper-class="my-autocomplete"
                  class="inline-input"
                  v-model="form.spu_name"
                  :fetch-suggestions="querySpuSearch"
                  placeholder="请填写Spu"
                  @select="handleSpuSelect"
                >
                  <template #default="{ item }">
                    <span class="id">id： {{ item.id }}</span>
                    <span class="name"> 名称：{{ item.title }}</span>
                  </template>
                </el-autocomplete>
              </el-form-item>
              <!-- <el-form-item label="类型" prop="type">
                <el-input size="medium" v-model="form.type" placeholder="请填写类型"></el-input>
              </el-form-item> -->
              <el-form-item label="图片" prop="img">
                <upload-imgs :max-num="maxNum" ref="uploadEle" :value="initData" />
              </el-form-item>
              <el-form-item class="submit">
                <el-button
                  v-permission="{ permission: ['创建Banner item', '更新Banner item'], type: 'disabled' }"
                  type="primary"
                  @click="submitForm('form')"
                  >保 存</el-button
                >
                <!-- <el-button @click="resetForm('form')">重 置</el-button> -->
              </el-form-item>
            </el-form>
          </el-col>
        </el-row>
      </div>
    </div>
  </div>
</template>

<script>
import BannerItem from '@/model/banner-item'
import UploadImgs from '@/component/base/upload-image'
import StickyTop from '@/component/base/sticky-top/sticky-top'
import Spu from '@/model/spu'
import Theme from '@/model/theme'

export default {
  components: {
    UploadImgs,
    StickyTop,
  },
  props: {
    editID: {
      type: Number,
    },
    isCreate: {
      type: Boolean,
      default: false,
    },
    bannerId: {
      type: Number,
      default: null,
    },
  },
  data() {
    return {
      spuSuggestions: [],
      themeSuggestions: [],
      maxNum: 1,
      form: {
        img: '',
        keyword: '',
        type: null,
        spu_id: null,
        spu_name: '',
        theme_id: null,
        theme_name: '',
      },
      rules: {
        minWidth: 10,
        minHeight: 10,
        maxSize: 5,
      },
      initData: [],
    }
  },
  async mounted() {
    if (!this.isCreate) {
      const res = await BannerItem.getBannerItem(this.editID)
      this.initData = [
        {
          id: res.id,
          display: res.img,
        },
      ]
      this.form = res
      if(this.form.type == 1) {
        this.form.type_name = "无类型"
      }else if(this.form.type == 2) {
        this.form.type_name = "Spu"
      }else if(this.form.type == 3) {
        this.form.type_name = "主题"
      }
    }

    this.loadSpuSuggestions()
    this.loadThemeSuggestions()
    this.loadTypeSuggestions()
  },
  methods: {
    async getValue() {
      const val = await this.$refs.uploadEle.getValue()
      if (val && val.length > 0) {
        this.form.img = val[0].display
      }
    },
    async submitForm() {
      await this.getValue()
      const form = { ...this.form }
      let res
      if (this.isCreate) {
        form.banner_id = this.bannerId
        res = await BannerItem.addBannerItem(form)
      } else {
        res = await BannerItem.editBannerItem(this.editID, form)
      }
      if (res.code < window.MAX_SUCCESS_CODE) {
        this.$message.success(`${res.message}`)
        this.resetForm('form')
        this.$emit('editClose')
      }
    },
    // 重置表单
    resetForm(formName) {
      this.$refs[formName].resetFields()
    },
    back() {
      this.$emit('editClose')
    },
    // spu
    async querySpuSearch(queryString, cb) {
      // eslint-disable-next-line
      // const spuSuggestions = await Spu.getList()
      // const results = queryString ? spuSuggestions.filter(this.createSpuFilter(queryString)) : spuSuggestions
      const results = this.spuSuggestions
      cb(results)
    },
    handleSpuSelect(item) {
      // this.state = item.name
      this.form.spu_name = item.title
      this.form.spu_id = item.id
    },
    // async getSpuValue() {
    //   const val = await this.$refs.uploadEle.getSpuValue()
    //   if (val && val.length > 0) {
    //     this.form.img = val[0].display
    //   }
    // },
    async loadSpuSuggestions() {
      try {
        this.spuSuggestions = await Spu.getList()
        if (this.spuSuggestions.length === 0) {
          this.$message.error('未找到Spu，请先添加Spu')
        }
      } catch (error) {
        this.$message.error('获取Spu信息失败')
        console.error(error)
      }
    },
    // theme
    async queryThemeSearch(queryString, cb) {
      const results = this.themeSuggestions
      cb(results)
    },
    handleThemeSelect(item) {
      // this.state = item.name
      this.form.theme_name = item.name
      this.form.theme_id = item.id
    },
    // async getThemeValue() {
    //   const val = await this.$refs.uploadEle.getThemeValue()
    //   if (val && val.length > 0) {
    //     this.form.img = val[0].display
    //   }
    // },
    async loadThemeSuggestions() {
      try {
        this.themeSuggestions = await Theme.getList()
        if (this.themeSuggestions.length === 0) {
          this.$message.error('未找到主题，请先添加主题')
        }
      } catch (error) {
        this.$message.error('获取主题信息失败')
        console.error(error)
      }
    },
     // Type
    queryTypeSearch(queryString, cb) {
      const results = this.typeSuggestions
      cb(results)
    },
    // createTypeFilter(queryString) {
    //   // eslint-disable-next-line
    //   return typeSuggestions => {
    //     return typeSuggestions.name.toLowerCase().indexOf(queryString.toLowerCase()) === 0
    //   }
    // },
    handleTypeSelect(item) {
      // this.state = item.name
      // this.form.name = item.name
      this.form.id = item.id
      this.form.type = item.id
      if(this.form.type == 1) {
        this.form.type_name = "无类型"
      }else if(this.form.type == 2) {
        this.form.type_name = "Spu"
      }else if(this.form.type == 3) {
        this.form.type_name = "主题"
      }
    },
    // async getThemeValue() {
    //   const val = await this.$refs.uploadEle.getThemeValue()
    //   if (val && val.length > 0) {
    //     this.form.img = val[0].display
    //   }
    // },
    async loadTypeSuggestions() {
      this.typeSuggestions = [
        {
          name : '无类型',
          id : 1,
        },
        {
          name : 'Spu',
          id : 2,
        },
        {
          name : '主题',
          id : 3,
        },
      ]
    },
  },
}
</script>

<style lang="scss" scoped>
.el-divider--horizontal {
  margin: 0;
}

.container {
  .title {
    height: 59px;
    line-height: 59px;
    color: $parent-title-color;
    font-size: 16px;
    font-weight: 500;
    text-indent: 40px;

    .back {
      float: right;
      margin-right: 40px;
      cursor: pointer;
    }
  }

  .wrap {
    padding: 20px;
  }

  .submit {
    float: left;
  }
}
</style>
