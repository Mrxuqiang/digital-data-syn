20141106 crate by sundan
================================================================================
表结构代码:TB_MSSAK
表结构名称:大区小区品牌分配表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MSSAK;
drop index AK_TB_MSSAK;
drop table TB_MSSAK;
create table TB_MSSAK  (
   MSSAK_ID             INTEGER                         not null,  /*大区小区品牌分配ID          */
   MSSAK001             INTEGER                         not null,  /*单别       */
   MSSAK002             VARCHAR2(30)                    not null,  /*单号       */
   MSSAK003             INTEGER,                                   /*营运组织id        */
   MSSAK004             INTEGER,                                   /*待调整系列id       */
   MSSAK005             INTEGER,                                   /*原商场id        */
   MSSAK006             INTEGER,                                   /*目的商场id        */  
   MSSAK007             VARCHAR2(1),                               /*调整方式  1.新增 2.调整 3.删除      */
   MSSAK008             INTEGER,                                   /*录入人        */
   MSSAK009             date,                                      /*录入时间        */
   MSSAK010             INTEGER,                                   /*审核人        */
   MSSAK011             date,                                      /*审核时间        */
   MSSAK012             VARCHAR(1),                                /*审核状态   N:未审核 Y:已审核     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门  */                               
   CREATE_DATE          DATE,                                      /*建立日期      */
   MODIFIER             VARCHAR2(12),                              /*修改人员      */
   MODI_DATE            DATE,                                      /*修改日期      */
   FLAG                 NUMBER(1),                                 /*资料状态      */
   constraint PK_TB_MSSAK primary key (MSSAK_ID)
);
create unique index AK_TB_MSSAK on TB_MSSAK (MSSAK001,MSSAK002,MSSAK003,FLAG);
create sequence SEQ_TB_MSSAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAK to public;
grant index  on TB_MSSAK to public;
grant update on TB_MSSAK to public; 
grant delete on TB_MSSAK to public;  
grant insert on TB_MSSAK to public; 
grant select on SEQ_TB_MSSAK to public;   
