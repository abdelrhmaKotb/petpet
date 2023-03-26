package gov.iti.jets.controllers;
import com.fasterxml.jackson.databind.ObjectMapper;

import com.google.gson.Gson;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.dto.TrendyProductsDTO;
import gov.iti.jets.persistent.dto.getCategoryAnditsQuantityDTO;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

public class filterProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String priceRange = req.getParameter("priceRange");
        String SelectedCategories= req.getParameter("SelectedCategories");
        ObjectMapper mapper = new ObjectMapper();
        int[] numbers = mapper.readValue(SelectedCategories, int[].class);
        List<Integer> categories = new ArrayList<Integer>(numbers.length);
        for (int i : numbers)
        {
            categories.add(i);
        }
        GetProductsService getProductsService = new GetProductsService();
        List <ProductDto> productDtos = getProductsService.filterProducts(Double.parseDouble(priceRange),categories);
        PrintWriter printWriter =resp.getWriter();
        printWriter.write(new Gson().toJson(productDtos));

    }

}
