/*
================================================================================
表结构代码:TB_SERID
表结构名称:商检结果字表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERID;
drop index AK_TB_SERID;
drop table TB_SERID;
create table TB_SERID  (                                       
   SERID_ID           INTEGER                 not null,            /*检测结果单子ID     */   
   SERID001           INTEGER                 not null,            /*检测结果单主ID     */   
   SERID002           DATE ,                                       /*抽样日期           */   
   SERID003           INTEGER,                                     /*抽样人员           */   
   SERID004           VARCHAR2(30) ,                               /*联系方式           */   
   SERID005           VARCHAR2(1),                                 /*是否抽样           */   
   SERID006           VARCHAR2(30),                                /*商户对接人         */ 
   SERID007           VARCHAR2(30),                                /*抽样命名           */
   SERID008           VARCHAR2(60),                                /*产品规格/型号      */
   SERID009           VARCHAR2(60),                                /*样品描述           */
   SERID010           VARCHAR2(1),                                 /*实际检测项目       */
   SERID011           VARCHAR2(60),                                /*送检机构           */
   SERID012           VARCHAR2(1),                                 /*必检项目是否合格   */
   SERID013           NUMBER(22,2),                                /*检测费用           */
   SERID014           NUMBER(22,2),                                /*检测品费用         */
   SERID015           VARCHAR2(1),                                 /*检测结果           */
   SERID016           VARCHAR2(80),                                /*处理措施           */
   SERID017           VARCHAR2(255),                               /*备注               */
   SERID018           INTEGER,                                     /*品牌ID             */
   SERID019           VARCHAR2(1),                                 /*环保项 1.甲醛 2.重金属 3.放射性 */ --20141011 add by sundan
   SERID020           VARCHAR2(30),                                /*指标             */ --20141011 add by sundan
   SERID021           VARCHAR2(30),                                /*标准要求（含单位）             */ --20141011 add by sundan
   SERID022           INTEGER,					   /*检测数值             */ --20141011 add by sundan
   SERID023           VARCHAR2(1),			           /*计划检测项目         */ --20141204 add by sundan
   SERID024           INTEGER,					   /*商户id             */ --20141204 add by sundan
   SERID025           INTEGER,					   /*楼栋id             */ --20141204 add by sundan
   SERID026           INTEGER,					   /*楼层id             */ --20141204 add by sundan
   SERID027           INTEGER,					   /*展位id             */ --20141204 add by sundan
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERID primary key (SERID_ID)                               
);                                                          
create sequence SEQ_TB_SERID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERID to public;                                     
grant index  on TB_SERID to public;                                     
grant update on TB_SERID to public;                                      
grant delete on TB_SERID to public;                                       
grant insert on TB_SERID to public;                                      
grant select on SEQ_TB_SERID to public;                                        