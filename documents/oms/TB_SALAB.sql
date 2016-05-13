/*
================================================================================
表结构代码:TB_SALAB
表结构名称:手续费率表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALAB;
drop index AK_TB_SALAB;
drop table TB_SALAB;
create table TB_SALAB  (
   SALAB_ID             INTEGER                         not null,  /*手续费率ID       */
   SALAB001             INTEGER                         not null,  /*公司ID           */
   SALAB002             INTEGER                         not null,  /*营运组织ID       */
   SALAB003             INTEGER                         not null,  /*结算ID           */
   SALAB004             VARCHAR2(8)                     not null,  /*费率代码         */
   SALAB005             VARCHAR2(30)                    not null,  /*费率名称         */
   SALAB006             VARCHAR2(1)                     not null,  /*费率类型         */
   SALAB007             NUMBER(12,2),                              /*手续费率         */
   SALAB008             NUMBER(12,2),                              /*手续费额         */
   SALAB009             VARCHAR2(1)                     not null,  /*是否默认 add by hansf*/
   SALAB010             NUMBER(12,0),                              /*手续费小数位     */ add ouwx 2011/8/29
   SALAB011             VARCHAR2(1),                               /*结算费率类型         */ 20111228 add by gaoxl for10209
   SALAB012             NUMBER(22,2),                              /*结算手续费率         */ 20111228 add by gaoxl for10209
   SALAB013             NUMBER(22,2),                              /*结算手续费额         */ 20111228 add by gaoxl for10209
   SALAB014             NUMBER(12,0),                              /*结算手续费小数位     */ 20111228 add by gaoxl for10209     
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER,                                 /*资料状态         */
   constraint PK_TB_SALAB primary key (SALAB_ID)
);
create unique index AK_TB_SALAB on TB_SALAB (SALAB002,SALAB003,SALAB004);
create sequence SEQ_TB_SALAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAB to public;
grant index  on TB_SALAB to public;
grant update on TB_SALAB to public; 
grant delete on TB_SALAB to public;  
grant insert on TB_SALAB to public; 
grant select on SEQ_TB_SALAB to public;   