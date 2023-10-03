package com.mcommerce.zuulserver;

import io.netty.resolver.DefaultAddressResolverGroup;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import reactor.netty.http.client.HttpClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ZuulServerApplication {

	@Bean
	public RouteLocator customRouteLocator(RouteLocatorBuilder builder) {
		return builder.routes()
				.route("microservice-produits", r -> r.path("/produits/**")
						.filters(f -> f.stripPrefix(1))
						.uri("lb://MICROSERVICE-PRODUITS"))
				.build();
	}

	public static void main(String[] args) {
		SpringApplication.run(ZuulServerApplication.class, args);
	}
}
