/*
20130903 add by gaoxl for 红星：add SERMB007
*/

/*
================================================================================
表结构代码:TB_SERMB
表结构名称:商户信用扣分项表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMB;
drop index AK_TB_SERMB;
drop table TB_SERMB;
create table TB_SERMB  (                                       
   SERMB_ID           INTEGER                 not null,            /*扣分项ID        */   
   SERMB001           VARCHAR2(10)            not null,            /*扣分项编码      */   
   SERMB002           VARCHAR2(30) ,                               /*扣分项名称      */   
   SERMB003           NUMBER(2),                                   /*扣减分数        */   
   SERMB004           VARCHAR2(30) ,                               /*相关程序编码    */   
   SERMB005           VARCHAR2(255),                               /*备注            */   
   SERMB006           VARCHAR2(1),                                 /*是否扣分项      */
   SERMB007           VARCHAR2(1),                                 /*信用分类        */      
   SERMB008           VARCHAR2(255),                               /*扣分类型        */ 取值：1、一票否决 2、服务指标 3、管理指标     
   SERMB009           VARCHAR2(255),                               /*扣分纬度        */ 取值：1、顾客喜爱度 2、售后服务 3、商品价格管理 4、质量管理 5、综合管理     6空值 
   SERMB010           VARCHAR2(255),                               /*扣分行为        */  取值：1、被媒体曝光、或被国家相关机构处罚 2、假冒伪劣  3、严重质量、环保类客诉    4、现场重大服类务投诉（如：与顾客争吵、打架等） 5、品牌之间恶性竞争、相互诋毁   6、环保质量检测不合格 7、在同品类中月度坪效排名在50%-80%（含）之间 8、在同品类中月度坪效排名在80%-100%（含）之间9、商户发生经商场确认的客诉 10、不配合商场进行客诉处理 11、商户未进行送货跟单 12、商户未进行送货回访，无台账记录13、展厅内标价签不规范 14、展厅内促销内容不规范 15、商品折扣违规（通过客诉、巡场等排查）16、资质不合规17、营业员违规18、展厅管理违规 19、未按时缴纳租金、未按时补齐质保金     
   SERMB011           INTEGER,                                     /*扣分行为        */
   SERMB012           VARCHAR2(2),                                 /*取值来源        */
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERMB primary key (SERMB_ID)                               
);                                           
create unique index AK_TB_SERMB on TB_SERMB (SERMB001,FLAG);               
create sequence SEQ_TB_SERMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMB to public;                                     
grant index  on TB_SERMB to public;                                     
grant update on TB_SERMB to public;                                      
grant delete on TB_SERMB to public;                                       
grant insert on TB_SERMB to public;                                      
grant select on SEQ_TB_SERMB to public;                                        