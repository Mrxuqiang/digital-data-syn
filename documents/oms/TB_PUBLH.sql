/*
================================================================================
表结构代码:TB_PUBLH
表结构名称:会计主体核算账套表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLH;
drop index AK_TB_PUBLH;
drop table TB_PUBLH;
create table TB_PUBLH  (
   PUBLH_ID             INTEGER                         not null,  /*会计主体核算账套ID         */
   PUBLH001             INTEGER                         not null,  /*会计主体ID                 */
   PUBLH002             VARCHAR2(16)                    not null,  /*核算账套代码               */
   PUBLH003             VARCHAR2(30)                    not null,  /*核算账套名称               */
   PUBLH004             INTEGER                         not null,  /*所属账套ID                 */
   PUBLH005             VARCHAR2(2)                     not null,  /*账套类型                   */
   PUBLH006             VARCHAR2(1),                               /*是否启用                   */
   PUBLH007             NUMBER(4),                                 /*启用年度                   */
   PUBLH008             NUMBER(2),                                 /*启用期间                   */
   PUBLH009             VARCHAR2(1),                               /*是否停用                   */
   PUBLH010             VARCHAR2(1),                               /*是否开账                   */
   PUBLH011             NUMBER(4),                                 /*现行年度                   */
   PUBLH012             NUMBER(2),                                 /*现行期间                 */    
   PUBLH013             INTEGER,                                   /*默认凭证类别                 */    
   PUBLH014             INTEGER,                                   /*损益结转科目               */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门               */                               
   CREATE_DATE          DATE,                                      /*建立日期                   */
   MODIFIER             VARCHAR2(12),                              /*修改人员                   */
   MODI_DATE            DATE,                                      /*修改日期                   */
   FLAG                 NUMBER(1),                                 /*资料状态                   */
   constraint PK_TB_PUBLH primary key (PUBLH_ID)
);
create unique index AK_TB_PUBLH on TB_PUBLH (PUBLH001,PUBLH002);
create sequence SEQ_TB_PUBLH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLH to public;
grant index  on TB_PUBLH to public;
grant update on TB_PUBLH to public; 
grant delete on TB_PUBLH to public;  
grant insert on TB_PUBLH to public; 
grant select on SEQ_TB_PUBLH to public;   