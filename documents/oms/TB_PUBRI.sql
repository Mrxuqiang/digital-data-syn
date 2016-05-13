/*
================================================================================
表结构代码:TB_PUBRI
表结构名称:外折接受方表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRI;
drop index AK_TB_PUBRI;
drop table TB_PUBRI;
create table TB_PUBRI  (
   PUBRI_ID             INTEGER                         not null,  /*外折接受方ID         */
   PUBRI001             INTEGER                         not null,  /*外部折算主ID         */
   PUBRI002             INTEGER                         not null,  /*外部折算帐簿关联ID   */
   PUBRI003             VARCHAR2(255),                             /*摘要                 */
   PUBRI004             INTEGER                         not null,  /*科目ID               */
   PUBRI005             INTEGER                         not null,  /*辅助核算项ID         */
   PUBRI006             INTEGER,                                   /*币种ID               */
   PUBRI007             VARCHAR2(1)                     not null,  /*方向                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBRI primary key (PUBRI_ID)
);
create unique index AK_TB_PUBRI on TB_PUBRI (PUBRI004,PUBRI005);
create sequence SEQ_TB_PUBRI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRI to public;
grant index  on TB_PUBRI to public;
grant update on TB_PUBRI to public; 
grant delete on TB_PUBRI to public;  
grant insert on TB_PUBRI to public; 
grant select on SEQ_TB_PUBRI to public;   