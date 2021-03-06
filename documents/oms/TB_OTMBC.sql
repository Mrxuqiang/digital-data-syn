20140718 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_OTMBC
表结构名称:订单信息子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTMBC;
drop index AK_TB_OTMBC;
drop table TB_OTMBC;
create table TB_OTMBC  (
   OTMBC_ID             INTEGER                         not null,  /*订单信息子ID       */
   OTMBC001             INTEGER                         not null,  /*订单信息ID         */
   OTMBC002             INTEGER			                  	not null,  /*价签ID             */
   OTMBC003             NUMBER(22,3),				                       /*商品数量           */
   OTMBC004             NUMBER(22,2),                              /*商品折扣率         */   
   OTMBC005             NUMBER(22,2),				                       /*商品成交金额       */      
   OTMBC006             VARCHAR2(255),                             /*商品SKU描述信息    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTMBC primary key (OTMBC_ID)
);
create unique index AK_TB_OTMBC on TB_OTMBC (OTMBC001,OTMBC002);
create sequence SEQ_TB_OTMBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTMBC to public;
grant index  on TB_OTMBC to public;
grant update on TB_OTMBC to public; 
grant delete on TB_OTMBC to public;  
grant insert on TB_OTMBC to public; 
grant select on SEQ_TB_OTMBC to public;   