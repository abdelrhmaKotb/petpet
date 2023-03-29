package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.OrderDetailsDaoImpl;
import gov.iti.jets.persistent.dto.BestSellingProductsDto;
import gov.iti.jets.persistent.dto.OrderDetailDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.OrderDetail;
import gov.iti.jets.services.mapper.OrderDetailsMapper;

import java.util.ArrayList;
import java.util.List;

public class GetOrderDetailsService {
    public  List<OrderDetailDto> getOrderDetailsByOrderId(Integer orderId) {
        OrderDetailsDaoImpl orderDetailsDoaDao = new OrderDetailsDaoImpl();
        List<OrderDetail> orderDetailList = orderDetailsDoaDao.getOrderDetailsByOrderId(orderId);
        List<OrderDetailDto> orderDetailDtos = new ArrayList<>();
        orderDetailList.forEach(element -> {
            orderDetailDtos.add(new OrderDetailsMapper().toDto(element));
        });
        return orderDetailDtos;
    }

    public List<BestSellingProductsDto> bestSelling() {
        OrderDetailsDaoImpl daoImpl = new OrderDetailsDaoImpl();
        List<BestSellingProductsDto> bestSellingProductsDtos = daoImpl.bestSelling();

        return bestSellingProductsDtos;

    }

    public long getSoldProducts() {
        OrderDetailsDaoImpl daoImpl = new OrderDetailsDaoImpl();
        long bestSellingProductsDtos = daoImpl.soldProducts();

        return bestSellingProductsDtos;

    }
}
