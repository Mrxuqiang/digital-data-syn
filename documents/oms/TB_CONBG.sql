/*
================================================================================
表结构代码:TB_CONBG
表结构名称:合同一次性固定费表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBG;
drop index AK_TB_CONBG;
drop table TB_CONBG;
create table TB_CONBG  (
   CONBG_ID             INTEGER                         not null,  /*合同一次性固定费ID  */
   CONBG001             INTEGER                         not null,  /*合同ID              */
   CONBG002             INTEGER                         not null,  /*费用ID              */
   CONBG003             INTEGER                         not null,  /*公式ID              */
   CONBG004             DATE                            not null,  /*费用日期            */
   CONBG005             NUMBER(12,2)                    not null,  /*标准数量            */
   CONBG006             NUMBER(12,2)                    not null,  /*费用标准            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBG primary key (CONBG_ID)
);
create unique index AK_TB_CONBG on TB_CONBG (CONBG001,CONBG002);
create sequence SEQ_TB_CONBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBG to public;
grant index  on TB_CONBG to public;
grant update on TB_CONBG to public; 
grant delete on TB_CONBG to public;  
grant insert on TB_CONBG to public; 
grant select on SEQ_TB_CONBG to public;   