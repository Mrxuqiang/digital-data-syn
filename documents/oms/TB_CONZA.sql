查文进 14:19:54
  /*
================================================================================
表结构代码:TB_CONZA
表结构名称:质保金主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONZA;
drop index AK_TB_CONZA;
drop table TB_CONZA;
create table TB_CONZA  (
   CONZA_ID             INTEGER                         not null,  /*质保金ID          */
   CONZA001             INTEGER                         not null,  /*营运组织ID        */
   CONZA002             INTEGER                         not null,  /*合同ID            */
   CONZA003             INTEGER                         not null,  /*客商ID            */
   CONZA004             INTEGER                         not null,  /*小类ID            */
   CONZA005             NUMBER(12,2)                    not null,  /*质量保证金标准    */
   CONZA006             NUMBER(12,2)                    not null,  /*质量保证金应收    */
   CONZA007             NUMBER(12,2)                    not null,  /*质量保证金已收    */
   CONZA008             NUMBER(12,2)                    not null,  /*质量保证金赔付    */
   CONZA009             NUMBER(12,2)                    not null,  /*质量保证金收回    */
   CONZA010             NUMBER(12,2)                    not null,  /*质量保证金未收    */
   CONZA011             NUMBER(12,2)                    not null,  /*质量保证金已退    */
   CONZA012             NUMBER(12,2)                    not null,  /*质量保证金余额    */
   CONZA013             DATE                            not null,  /*合同终止日期      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */ 
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_CONZA primary key (CONZA_ID)
);
create unique index AK_TB_CONZA on TB_CONZA (CONZA001,CONZA002);
create sequence SEQ_TB_CONZA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONZA to public;
grant index  on TB_CONZA to public;
grant update on TB_CONZA to public; 
grant delete on TB_CONZA to public;  
grant insert on TB_CONZA to public; 
grant select on SEQ_TB_CONZA to public;   
