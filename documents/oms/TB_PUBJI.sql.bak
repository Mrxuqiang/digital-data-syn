/*
================================================================================
表结构代码:TB_PUBJI
表结构名称:客商资质明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBJI;
drop index AK_TB_PUBJI;
drop table TB_PUBJI;
create table TB_PUBJI  (
   PUBJI_ID             INTEGER                         not null,  /*客商资质明细ID         */
   PUBJI001             INTEGER                         not null,  /*资质ID             */
   PUBJI002             VARCHAR2(10),                              /*有效期             */
   PUBJI003             VARCHAR2(10) ,                             /*年检             */
   PUBJI004             VARCHAR2(255),                             /*图片路径             */
   PUBJI005             VARCHAR2(1),                               /*状态         */ 
   PUBJI006             VARCHAR2(1),                               /*资质类型 1、营业执照		2、税务登记证	 3、授权书	4、身份证	5、质检报告	6、产品说明书	7、产品合格证8、3C	9、报关单	10、质量明示卡	11、环保证明	12、组织机构代码证      13.其它 */
   PUBJI007             VARCHAR2(10),                              /*备用日期         */ 
   PUBJI008             VARCHAR2(10),                              /*备用日期         */ 
   PUBJI009             INTEGER,                                    /*录入人           */
   PUBJI010             DATE,                                       /*录入日期         */
   PUBJI011             INTEGER,                                    /*修改人           */
   PUBJI012             DATE,                                       /*修改日期        */
   PUBJI013             INTEGER,                                    /*审核人           */
   PUBJI014             DATE,                                       /*审核日期         */
   PUBJI015             VARCHAR2(2),                               /*资质证书有无         */
   PUBJI016             VARCHAR2(255),                             /*其它备注        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBJI primary key (PUBJI_ID)
);
create unique index AK_TB_PUBJI on TB_PUBJI (PUBJI001,PUBJI002);
create sequence SEQ_TB_PUBJI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJI to public;
grant index  on TB_PUBJI to public;
grant update on TB_PUBJI to public; 
grant delete on TB_PUBJI to public;  
grant insert on TB_PUBJI to public; 
grant select on SEQ_TB_PUBJI to public;   