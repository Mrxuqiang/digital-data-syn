/*
================================================================================
表结构代码:TB_BILMF
表结构名称:合同质保金条款变更主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILMF;
drop index AK_TB_BILMF;
drop table TB_BILMF;
create table TB_BILMF  (
   BILMF_ID             INTEGER                         not null,  /*合同质保金条款变更主表ID     */
   BILMF001             INTEGER                         not null,  /*单别ID               */
   BILMF002             VARCHAR2(30)                    not null,  /*变更单号             */
   BILMF003             DATE                            not null,  /*单据日期             */
   BILMF004             INTEGER                         not null,  /*营运组织ID           */
   BILMF005             VARCHAR2(255),                             /*备注                 */
   BILMF006             INTEGER,                                   /*录入人ID             */
   BILMF007             DATE,                                      /*录入日期             */
   BILMF008             INTEGER,                                   /*审核人ID             */
   BILMF009             DATE,                                      /*审核日期             */
   BILMF010             VARCHAR2(1)                     not null,  /*审核状态             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                 /*资料状态             */
   constraint PK_TB_BILMF primary key (BILMF_ID)
);
create unique index AK_TB_BILMF on TB_BILMF (BILMF001,BILMF002);
create sequence SEQ_TB_BILMF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILMF to public;
grant index  on TB_BILMF to public;
grant update on TB_BILMF to public; 
grant delete on TB_BILMF to public;  
grant insert on TB_BILMF to public; 
grant select on SEQ_TB_BILMF to public;   