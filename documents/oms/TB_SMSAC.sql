/*
================================================================================
表结构代码:TB_SMSAC
表结构名称:外部参数表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SMSAC;
drop index AK_TB_SMSAC;
drop table TB_SMSAC;
create table TB_SMSAC  (
   SMSAC_ID            INTEGER,                not null,            /*短信模板参数ID  */        
   SMSAC001            INTEGER,                not null,            /*短信模板ID      */ 缺省ID，取(SMSAB_ID)     
   SMSAC002            VARCHAR2(12),                                /*参数编码        */ 编号以arg+全局序列编号的形式显示，系统自动生成
   SMSAC003            VARCHAR2(1),                                 /*参数类型        */ 1.INTEGER 2.VARCHAR2 3.DATE 4.NUMBER
   SMSAC004            VARCHAR2(30),                                /*参数描述        */ 
   CREATE_USER         VARCHAR2(12),                                /*建立人员        */
   USER_GROUP          VARCHAR2(12),                                /*建立人员部门    */                             
   CREATE_DATE         DATE,                                        /*建立日期        */
   MODIFIER            VARCHAR2(12),                                /*修改人员        */
   MODI_DATE           DATE,                                        /*修改日期        */
   FLAG                NUMBER,                                      /*资料状态        */
   constraint PK_TB_SMSAC primary key (SMSAC_ID)
);
create unique index AK_TB_SMSAC on TB_SMSAC (SMSAC001,SMSAC002,FLAG);
create sequence SEQ_TB_SMSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAC to public;
grant index  on TB_SMSAC to public;
grant update on TB_SMSAC to public; 
grant delete on TB_SMSAC to public;  
grant insert on TB_SMSAC to public; 
grant select on SEQ_TB_SMSAC to public;   