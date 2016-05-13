/*
20130903 add by gaoxl for 红星：add SERMF008
*/


/*
================================================================================
表结构代码:TB_SERMF
表结构名称:投诉原因表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMF;
drop index AK_TB_SERMF;
drop table TB_SERMF;
create table TB_SERMF  (                                       
   SERMF_ID           INTEGER                 not null,            /*投诉原因ID        */   
   SERMF001           VARCHAR2(1)             not null,            /*投诉关系人        */   
   SERMF002           VARCHAR2(1)             not null,            /*阶段              */   
   SERMF003           VARCHAR2(4),                                 /*投诉原因编码      */   
   SERMF004           VARCHAR2(60) ,                               /*投诉原因名称      */   
   SERMF005           VARCHAR2(1),                                 /*是否扣分项        */ 
   SERMF006           VARCHAR2(1),                                 /*失效              */ 
   SERMF007           VARCHAR2(255),                               /*备注              */
   SERMF008           VARCHAR2(1),                                 /*信用分类          */ 
   SERMF009           VARCHAR2(1),                                 /*扣分类型              */取值：1、一票否决 2、服务指标 3、管理指标
   SERMF010           VARCHAR2(1),                                 /*扣分纬度              */取值：1、顾客喜爱度 2、售后服务 3、商品价格管理 4、质量管理 5、综合管理     6空值 
   SERMF011           VARCHAR2(1),                                 /*扣分行为              */ 取值：1、被媒体曝光、或被国家相关机构处罚 2、假冒伪劣  3、严重质量、环保类客诉    4、现场重大服类务投诉（如：与顾客争吵、打架等） 5、品牌之间恶性竞争、相互诋毁   6、环保质量检测不合格 7、在同品类中月度坪效排名在50%-80%（含）之间 8、在同品类中月度坪效排名在80%-100%（含）之间9、商户发生经商场确认的客诉 10、不配合商场进行客诉处理 11、商户未进行送货跟单 12、商户未进行送货回访，无台账记录13、展厅内标价签不规范 14、展厅内促销内容不规范 15、商品折扣违规（通过客诉、巡场等排查）16、资质不合规17、营业员违规18、展厅管理违规 19、未按时缴纳租金、未按时补齐质保金            
   SERMF012           INTEGER,                                     /*扣分行为              */
   SERMF013           VARCHAR2(2),                                 /*取值来源              */
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMF primary key (SERMF_ID)                               
);                                           
create unique index AK_TB_SERMF on TB_SERMF (SERMF003,FLAG);               
create sequence SEQ_TB_SERMF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMF to public;                                     
grant index  on TB_SERMF to public;                                     
grant update on TB_SERMF to public;                                      
grant delete on TB_SERMF to public;                                       
grant insert on TB_SERMF to public;                                      
grant select on SEQ_TB_SERMF to public;                                        