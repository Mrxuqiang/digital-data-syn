/*
================================================================================
表结构代码:TB_MEDCA
表结构名称:媒体广告合同主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDCA;
drop index AK_TB_MEDCA;
drop table TB_MEDCA;
create table TB_MEDCA  (
   MEDCA_ID             INTEGER                         not null,  /*媒体广告合同ID     */
   MEDCA001             INTEGER                         not null,  /*营运组织ID         */
   MEDCA002             VARCHAR2(30)                    not null,  /*媒体合同号         */
   MEDCA003             DATE                            not null,  /*签订日期           */
   MEDCA004             INTEGER                         not null,  /*代理商ID           */
   MEDCA005             VARCHAR2(30)                    not null,  /*签约人             */
   MEDCA006             DATE				not null,  /*合同起日           */
   MEDCA007             DATE				not null,  /*合同止日           */
   MEDCA008             INTEGER				not null,  /*结算方式ID         */
   MEDCA009             NUMBER(12,2)                    not null,  /*合同金额           */
   MEDCA010             NUMBER(12,2),				   /*已请款金额         */
   MEDCA011             NUMBER(12,2),                              /*被扣款金额         */
   MEDCA012             NUMBER(12,2)                   not null,   /*合同余额           */
   MEDCA013             INTEGER			       not null,   /*业务部门ID         */
   MEDCA014             INTEGER                        not null,   /*业务人员ID         */ 
   MEDCA015             VARCHAR2(255),                             /*备注               */
   MEDCA016             VARCHAR2(1)                    not null,   /*合同状态           */
   MEDCA017             INTEGER,                                   /*录入人员ID         */
   MEDCA018             DATE,					   /*录入日期           */
   MEDCA019             INTEGER,				   /*审核人员ID         */  
   MEDCA020             DATE,					   /*审核日期           */
   MEDCA021             VARCHAR2(1),                               /*是否签核           */
   MEDCA022             VARCHAR2(30),                              /*签核单号           */
   MEDCA023             VARCHAR2(1),                               /*签核码             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDCA primary key (MEDCA_ID)
);
create unique index AK_TB_MEDCA on TB_MEDCA (MEDCA001);
create sequence SEQ_TB_MEDCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCA to public;
grant index  on TB_MEDCA to public;
grant update on TB_MEDCA to public; 
grant delete on TB_MEDCA to public;  
grant insert on TB_MEDCA to public; 
grant select on SEQ_TB_MEDCA to public;   