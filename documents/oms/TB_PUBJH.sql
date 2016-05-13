/*
================================================================================
表结构代码:TB_PUBJH
表结构名称:客商资质表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBJH;
drop index AK_TB_PUBJH;
drop table TB_PUBJH;
create table TB_PUBJH  (
   PUBJH_ID             INTEGER                         not null,  /*客商资质ID         */
   PUBJH001             INTEGER                         not null,  /*客商ID             */
   PUBJH002             INTEGER                         not null,  /*品牌ID         */
   PUBJH003             VARCHAR2(40)                    not null,  /*展位ID           */
   PUBJH004             VARCHAR2(30)                    not null,  /*合同ID             */
   PUBJH005             INTEGER,                                   /*营业执照ID         */ 
   PUBJH006             INTEGER,                                   /*税务登记ID         */
   PUBJH007             INTEGER,                                   /*授权书         */ 
   PUBJH008             INTEGER,                                   /*身份证         */  
   PUBJH009             INTEGER,                                   /*质检报告         */   
   PUBJH010             INTEGER,                                   /*产品说明书         */   
   PUBJH011             INTEGER,                                   /*产品合格证         */   
   PUBJH012             INTEGER,                                   /*3C             */   
   PUBJH013             INTEGER,                                   /*报关单         */   
   PUBJH014             INTEGER,                                   /*质量明示卡         */   
   PUBJH015             INTEGER,                                   /*环保证明         */   
   PUBJH016             INTEGER,                                   /*组织机构代码证         */   
   PUBJH017             INTEGER,                                   /*备用ID         */   
   PUBJH018             INTEGER,                                   /*备用ID         */ 
   PUBJH019             INTEGER,                                   /*备用ID         */ 
   PUBJH020             INTEGER,                                   /*备用ID         */ 
   PUBJH021             INTEGER,                                   /*备用ID         */          
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBJH primary key (PUBJH_ID)
);
create unique index AK_TB_PUBJH on TB_PUBJH (PUBJH001,PUBJH002);
create sequence SEQ_TB_PUBJH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJH to public;
grant index  on TB_PUBJH to public;
grant update on TB_PUBJH to public; 
grant delete on TB_PUBJH to public;  
grant insert on TB_PUBJH to public; 
grant select on SEQ_TB_PUBJH to public;   