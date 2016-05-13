/*
================================================================================
表结构代码:TB_BILAK
表结构名称:网银账扣申请单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILAK;
drop index AK_TB_BILAK;
drop table TB_BILAK;
create table TB_BILAK  (
   BILAK_ID             INTEGER                         not null,  /*申请单主id          */
   BILAK001             INTEGER                         not null,  /*单别id              */
   BILAK002             VARCHAR2(30)                    not null,  /*单号                */   
   BILAK003             INTEGER,                                   /*商场id              */  
   BILAK004             VARCHAR2(255),                             /*备注                */  
   BILAK005             INTEGER,                                   /*录入人id            */         
   BILAK006             DATE,                                      /*录入日期            */
   BILAK007             INTEGER,                                   /*审核人id            */
   BILAK008             DATE,                                      /*审核日期            */
   BILAK009             VARCHAR2(1),                               /*单据状态            */
   BILAK010             VARCHAR2(1),                               /*是否推送            */   
   BILAK011             VARCHAR2(1),                               /*是否上传sap（银行到账）*/   
   BILAK012             VARCHAR2(255),                             /*到账说明            */
   BILAK013             DATE,                                      /*到账日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_BILAK primary key (BILAK_ID)
);
create unique index AK_TB_BILAK on TB_BILAK (BILAK001,BILAK002,flag);
create sequence SEQ_TB_BILAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAK to public;
grant index  on TB_BILAK to public;
grant update on TB_BILAK to public; 
grant delete on TB_BILAK to public;  
grant insert on TB_BILAK to public; 
grant select on SEQ_TB_BILAK to public;   