package com.digital.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by CC on 16/5/30.
 */
@Component
public class JobService {


    private static Logger logger = LoggerFactory.getLogger(JobService.class);

    @Resource
    OrgService orgService;
    @Resource
    BrandService brandService;
    @Resource
    CompanyService companyService;
    @Resource
    ConBrandSeriesService conBrandSeriesService;
    @Resource
    ContractService contractService;
    @Resource
    ContractShopService contractShopService;
    @Resource
    DealerService dealerService;
    @Resource
    MarketService marketService;
    @Resource
    BoothService boothService;

    public void jobMethod() {
        try {
            logger.info("...start...");
            //基础数据导入
            //导入组织机构
            orgService.cleanOrg();
            orgService.importOrg();
            //导入商场数据
            marketService.clean();
            marketService.importMarket();

            //业务数据导入
            //品牌相关数据
            brandService.cleanBrand();
            brandService.importBrandInfo();
            brandService.importBrandSeries();
            //工厂相关数据
            companyService.cleanCompany();
            companyService.importCompany();
            //经销商相关数据
            dealerService.cleanDealer();
            dealerService.importDealer();
            //摊位相关数据
            boothService.clean();
            boothService.importBooth();
            //合同相关数据
            contractService.cleanContract();
            conBrandSeriesService.cleanConBrandSeries();
            contractShopService.cleanContractShop();

            contractService.importContract();
            conBrandSeriesService.importConBrandSeries();
            contractShopService.importContractShop();

            logger.info("...end...");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
