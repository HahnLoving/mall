
package com.hahn.util;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hahn.exception.http.ServerErrorException;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter
public class SuperGenericAndJson<T> implements AttributeConverter<T, String> {
    @Autowired
    private ObjectMapper mapper;


    @Override
    public String convertToDatabaseColumn(T t) {
        try {
            return mapper.writeValueAsString(t);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServerErrorException(9999);
        }
    }

    @Override
    public T convertToEntityAttribute(String s) {
        try {
            if (s == null) {
                return null;
            }

            T t = mapper.readValue(s, new TypeReference<T>() {
            });
            return t;
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServerErrorException(9999);
        }
    }
}
