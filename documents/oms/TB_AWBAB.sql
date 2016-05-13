/*
================================================================================
表结构代码:TB_AWBAB
表结构名称:科目因素对应表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBAB;
drop index AK_TB_AWBAB;
drop table TB_AWBAB;
create table TB_AWBAB  (
   AWBAB_ID             INTEGER                         not null,  /*科目因素对应ID     */
   AWBAB001             INTEGER                         not null,  /*科目类型ID       */
   AWBAB002             INTEGER                         not null,  /*影响因素列表ID       */
   AWBAB003             VARCHAR2(4)                     not null,  /*科目对照表中列号             */
   AWBAB004             VARCHAR2(1)                     not null,  /*分类标识1、科目2，账套 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_AWBAB primary key (AWBAB_ID)
);
create unique index AK_TB_AWBAB on TB_AWBAB (AWBAB001,AWBAB002);
create sequence SEQ_TB_AWBAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAB to public;
grant index  on TB_AWBAB to public;
grant update on TB_AWBAB to public; 
grant delete on TB_AWBAB to public;  
grant insert on TB_AWBAB to public; 
grant select on SEQ_TB_AWBAB to public;   