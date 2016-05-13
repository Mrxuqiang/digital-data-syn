/*
================================================================================
表结构代码:TB_PUBIH
表结构名称:广告位表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIH;
drop index AK_TB_PUBIH;
drop table TB_PUBIH;
create table TB_PUBIH  (
   PUBIH_ID             INTEGER                         not null,  /*广告位ID             */
   PUBIH001             VARCHAR2(16)                    not null,  /*广告位编号           */
   PUBIH002             VARCHAR2(30),                              /*广告位描述           */  
   PUBIH003             VARCHAR2(60),                              /*广告位位置           */  
   PUBIH004             INTEGER                         not null,  /*营运组织ID           */
   PUBIH005             INTEGER,                                   /*楼栋ID               */  
   PUBIH006             INTEGER,                                   /*楼层ID               */  
   PUBIH007             VARCHAR2(60),                              /*方位                 */  
   PUBIH008             VARCHAR2(60),                              /*地点描述             */  
   PUBIH009             NUMBER(12,2),                              /*面积(M2)             */  
   PUBIH010             VARCHAR2(60),                              /*材质                 */  
   PUBIH011             NUMBER(12,2),                              /*宽(M)                */  
   PUBIH012             NUMBER(12,2),                              /*高(M)                */  
   PUBIH013             VARCHAR2(1)                     not null,  /*使用情况             */
   PUBIH014             VARCHAR2(60),                              /*备注一               */  
   PUBIH015             VARCHAR2(60),                              /*备注二               */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBIH primary key (PUBIH_ID)
);
create unique index AK_TB_PUBIH on TB_PUBIH (PUBIH001);
create sequence SEQ_TB_PUBIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIH to public;
grant index  on TB_PUBIH to public;
grant update on TB_PUBIH to public; 
grant delete on TB_PUBIH to public;  
grant insert on TB_PUBIH to public; 
grant select on SEQ_TB_PUBIH to public;   