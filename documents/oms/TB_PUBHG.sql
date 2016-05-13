/*
================================================================================
表结构代码:TB_PUBHG
表结构名称:自定义分类信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHG;
drop index AK_TB_PUBHG;
drop table TB_PUBHG;
create table TB_PUBHG  (
   PUBHG_ID             INTEGER                         not null,  /*自定义分类项ID    */
   PUBHG001             VARCHAR2(2)                     not null,  /*自定义分类组 3.产地，4.风格，5.功能     */
   PUBHG002             VARCHAR2(8)                     not null,  /*自定义分类项代码（分类代码）  */
   PUBHG003             VARCHAR2(32)                    not null,  /*自定义分类项描述 （分类项名称）*/
   PUBHG004             VARCHAR2(32)                    not null,  /*自定义分类项名称  */
   PUBHG005             INTEGER,                                   /*商品分类ID        */ 
   PUBHG006             INTEGER,                                   /*单品分类自定义ID  */
   PUBHG007             VARCHAR2(100)                           ,  /*备用1  */
   PUBHG008             VARCHAR2(100)                           ,  /*备用2  */
   PUBHG009             VARCHAR2(100)                           ,  /*备用3  */
   PUBHG010             VARCHAR2(100)                           ,  /*备用4  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHG primary key (PUBHG_ID)
);
create unique index AK_TB_PUBHG on TB_PUBHG (PUBHG002);
create sequence SEQ_TB_PUBHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHG to public;
grant index  on TB_PUBHG to public;
grant update on TB_PUBHG to public; 
grant delete on TB_PUBHG to public;  
grant insert on TB_PUBHG to public; 
grant select on SEQ_TB_PUBHG to public;   