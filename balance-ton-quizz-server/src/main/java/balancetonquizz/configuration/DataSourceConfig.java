package balancetonquizz.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class DataSourceConfig {

    @Value("${spring.datasource.driver-class-name}")
    private String springDatasourceDriverClassName;

    @Value("${spring.datasource.url}")
    private String springDatasourceUrl;

    @Value("${spring.datasource.username}")
    private String springDatasourceUsername;

    @Value("${spring.datasource.password}")
    private String springDatasourcePassword;

    @Bean
    public DataSource datasource() {
        if (springDatasourcePassword != null){
            return DataSourceBuilder.create()
                    .driverClassName(springDatasourceDriverClassName)
                    .url(springDatasourceUrl)
                    .username(springDatasourceUsername)
                    .password(springDatasourcePassword)
                    .build();
        } else {
            return DataSourceBuilder.create()
                    .driverClassName(springDatasourceDriverClassName)
                    .url(springDatasourceUrl)
                    .username(springDatasourceUsername)
                    .build();
        }
    }
}
