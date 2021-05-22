package me.lsfs.rediserv.configurations;

import org.modelmapper.AbstractConverter;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Configuration
public class ModelMapperConfiguration {

    DateTimeFormatter diaMesAnoFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    @Bean
    public ModelMapper modelMapper(){
        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
        

        return modelMapper;
    }

    /**
     * "Ensina" o ModelMapper a converter objetos do tipo {@link String} para {@link LocalDate}.
     *
     * @return AbstractConverter<String, LocalDate> conversor configurado
     */
    private AbstractConverter<String, LocalDate> getStringToLocalDateConverter() {
        return new AbstractConverter<String, LocalDate>() {

            @Override
            protected LocalDate convert(String source) {
                if (source == null) {
                    return null;
                }

                return LocalDate.parse(source, diaMesAnoFormatter);
            }
        };
    }

    /**
     * "Ensina" o ModelMapper a converter objetos do tipo {@link LocalDate} para {@link String}.
     *
     * @return AbstractConverter<LocalDate, String> conversor configurado
     */
    private AbstractConverter<LocalDate, String> getLocalDateToStringConverter() {
        return new AbstractConverter<LocalDate, String>() {

            @Override
            protected String convert(LocalDate source) {
                if (source == null) {
                    return null;
                }

                return diaMesAnoFormatter.format(source);
            }
        };
    }

}
