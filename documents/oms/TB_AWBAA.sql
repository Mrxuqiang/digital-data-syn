/*
================================================================================
表结构代码:TB_AWBAA
表结构名称:科目分类定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBAA;
drop index AK_TB_AWBAA;
drop table TB_AWBAA;
create table TB_AWBAA  (
   AWBAA_ID             INTEGER                         not null,  /*科目分类ID     */
   AWBAA001             VARCHAR2(4) ,                              /*科目分类编号       */
   AWBAA002             VARCHAR2(30),                              /*科目分类名称       */
   AWBAA003             INTEGER                         not null,  /*模块ID             */
   AWBAA004             INTEGER,                                   /*默认科目ID            */
   AWBAA005             VARCHAR2(1)                     not null,  /*分类标识1、科目2，账套 */
   AWBAA006             INTEGER,                                   /*公司ID              */
   AWBAA007             INTEGER,                                   /*会计主体ID          */
   AWBAA008             INTEGER,                                   /*核算账套ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_AWBAA primary key (AWBAA_ID)
);
create sequence SEQ_TB_AWBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAA to public;
grant index  on TB_AWBAA to public;
grant update on TB_AWBAA to public; 
grant delete on TB_AWBAA to public;  
grant insert on TB_AWBAA to public; 
grant select on SEQ_TB_AWBAA to public;   