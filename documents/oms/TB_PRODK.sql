/*
================================================================================
表结构代码:TB_PRODK
表结构名称:出入证发放单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODK;
drop index AK_TB_PRODK;
drop table TB_PRODK;
create table TB_PRODK  (
   PRODK_ID             INTEGER                         not null,  /*出入证发放单子表ID  */
   PRODK001             INTEGER                         not null,  /*出入证发放单ID      */
   PRODK002             VARCHAR2(30)                    not null,  /*通行证号            */
   PRODK003             VARCHAR2(30),  				   /*姓名                */
   PRODK004             VARCHAR2(30),				   /*身份证号            */
   PRODK005             VARCHAR2(1),                               /*性别                */
   PRODK006             VARCHAR2(1), 				   /*已退还              */
   PRODK007             VARCHAR2(100),				   /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODK primary key (PRODK_ID)
);
create unique index AK_TB_PRODK on TB_PRODK (PRODK001,PRODK002);
create sequence SEQ_TB_PRODK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODK to public;
grant index  on TB_PRODK to public;
grant update on TB_PRODK to public; 
grant delete on TB_PRODK to public;  
grant insert on TB_PRODK to public; 
grant select on SEQ_TB_PRODK to public;   

