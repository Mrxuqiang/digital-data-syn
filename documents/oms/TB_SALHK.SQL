/*
================================================================================
表结构代码:TB_SALHK
表结构名称:结款单
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHK;
drop index AK_TB_SALHK;
drop table TB_SALHK;
create table TB_SALHK  (
   SALHK_ID             INTEGER                          not null,  /*结款单ID     */
   SALHK001             INTEGER                          not null,  /*结款单单别    */
   SALHK002             VARCHAR2(30)                     not null,  /*结款单号   */
   SALHK003             INTEGER                          not null,  /*结款门店    */
   SALHK004             DATE                             not null,  /*结款日期   */
   SALHK005             INTEGER                          not null,  /*结款人   */
   SALHK006             NUMBER(12,2),                               /*现金      */
   SALHK007             NUMBER(12,2),                               /*银联卡   */
   SALHK008             NUMBER(12,2),                               /*储值卡   */
   SALHK009             NUMBER(12,2),                               /*纸面券     */
   SALHK010             NUMBER(12,2),                               /*冲预收  */
   SALHK011             NUMBER(12,2),                               /*电子礼券     */
   SALHK012             NUMBER(12,2),                               /*支票 */
   SALHK013             NUMBER(12,2),                               /*第三方卡 */
   SALHK014             NUMBER(12,2),                               /*代收银 */
   SALHK015             INTEGER                                  ,  /*录入人   */
   SALHK016             DATE                                    ,   /*录入时间   */
   SALHK017             INTEGER                         not null,   /*审核人*/
   SALHK018             DATE                                    ,   /*审核时间*/
   SALHK019             VARCHAR2(1)                        ,   /*审核状态*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员 */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门 */                               
   CREATE_DATE          DATE,                                      /*建立日期   */
   MODIFIER             VARCHAR2(12),                              /*修改人员*/
   MODI_DATE            DATE,                                      /*修改日期    */
   FLAG                 NUMBER(1),                                 /*资料状态       */
   constraint PK_TB_SALHK primary key (SALHK_ID)
);
create sequence SEQ_TB_SALHK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHK to public;
grant index  on TB_SALHK to public;
grant update on TB_SALHK to public; 
grant delete on TB_SALHK to public;  
grant insert on TB_SALHK to public; 
grant select on SEQ_TB_SALHK to public;   