/*
================================================================================
表结构代码:TB_HRBAA
表结构名称:税率起征点表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAA;
drop index AK_TB_HRBAA;
drop table TB_HRBAA;
create table TB_HRBAA  (
   HRBAA_ID             INTEGER                         not null,  /*所得税率ID         */
   HRBAA001             INTEGER                         not null,  /*纳税地点ID         */
   HRBAA002             NUMBER(12,2)                    not null,  /*起征点             */
   HRBAA003             DATE                            not null,  /*生效日期           */
   HRBAA004             DATE,                                      /*失效日期           */
   HRBAA005             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAA primary key (HRBAA_ID)
);
create unique index AK_TB_HRAAA on TB_HRBAA (HRBAA001);
create sequence SEQ_TB_HRBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAA to public;
grant index  on TB_HRBAA to public;
grant update on TB_HRBAA to public; 
grant delete on TB_HRBAA to public;  
grant insert on TB_HRBAA to public; 
grant select on SEQ_TB_HRBAA to public;   