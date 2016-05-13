/*
================================================================================
表结构代码:TB_CONAA
表结构名称:费用定额标准表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAA;
drop index AK_TB_CONAA;
drop table TB_CONAA;
create table TB_CONAA  (
   CONAA_ID             INTEGER                         not null,  /*费用固定标准ID      */
   CONAA001             INTEGER                         not null,  /*公司ID              */
   CONAA002             INTEGER                         not null,  /*营运组织ID          */
   CONAA003             INTEGER                         not null,  /*费用ID              */
   CONAA004             INTEGER                         not null,  /*摊位ID              */
   CONAA005             DATE                            not null,  /*开始日期            */
   CONAA006             DATE                            not null,  /*结束日期            */
   CONAA007             NUMBER(12,2)                    not null,  /*标准数量            */
   CONAA008             NUMBER(12,4)                    not null,  /*费用标准            */
   CONAA009             VARCHAR2(255),                             /*备注                */
   CONAA010             INTEGER,                                   /*录入人              */
   CONAA011             DATE,                                      /*录入日期            */
   CONAA012             INTEGER,                                   /*修改人              */
   CONAA013             DATE,                                      /*修改日期            */
   CONAA014             INTEGER,                                   /*场地ID              */ add ouwx 2011/11/16
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONAA primary key (CONAA_ID)
);
create unique index AK_TB_CONAA on TB_CONAA (CONAA003,CONAA004,CONAA005,CONAA014);
create sequence SEQ_TB_CONAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAA to public;
grant index  on TB_CONAA to public;
grant update on TB_CONAA to public; 
grant delete on TB_CONAA to public;  
grant insert on TB_CONAA to public; 
grant select on SEQ_TB_CONAA to public;   