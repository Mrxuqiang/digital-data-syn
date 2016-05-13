/*
================================================================================
表结构代码:TB_ASSBB
表结构名称:交易单据子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_ASSBB;
drop index AK_TB_ASSBB;
drop table TB_ASSBB;
create table TB_ASSBB  (
   ASSBB_ID             INTEGER                         not null,  /*单据子ID                  */
   ASSBB001             INTEGER                         not null,  /*单据主ID                  */
   ASSBB002             INTEGER                         not null,  /*卡片编号ID                  */
   ASSBB003             VARCHAR2(30)                    not null,  /*资产编号                  */
   ASSBB004             VARCHAR2(60),                              /*资产名称                  */
   ASSBB005             INTEGER,                                   /*管理部门                  */
   ASSBB006             INTEGER,                                   /*使用部门                  */
   ASSBB007             NUMBER(5,4),                               /*比例                      */
   ASSBB008             VARCHAR2(1) ,                              /*折旧承担部门              */
   ASSBB009             VARCHAR2(255) ,                            /*存放地点                  */
   ASSBB010             INTEGER,                                   /*使用状况                  */
   ASSBB011             INTEGER,                                   /*增加方式                  */
   ASSBB012             NUMBER(4),                              /*数量                      */
   ASSBB013             INTEGER ,                                  /*使用人                    */
   ASSBB014             NUMBER(16,2) ,                             /*原币原值                   */
   ASSBB015             NUMBER(16,2),                              /*本币原值                   */
   ASSBB016             NUMBER(16,2),                              /*累计折旧                   */
   ASSBB017             NUMBER(4),                                 /*使用年                     */
   ASSBB018             NUMBER(2),                                 /*使用月                     */
   ASSBB019             NUMBER(16,2),                              /*减值准备                   */
   ASSBB020             NUMBER(5,4),                               /*净残值率                   */
   ASSBB021             NUMBER(16,2),                              /*净残值                     */
   ASSBB022             NUMBER(18,3),                              /*工作总量                   */
   ASSBB023             INTEGER,                                   /*变动后管理部门             */
   ASSBB024             INTEGER,                                   /*变动后使用部门             */
   ASSBB025             NUMBER(5,4),                               /*变动后比例                 */
   ASSBB026             VARCHAR2(1),                               /*变动后折旧承担部门         */
   ASSBB027             VARCHAR2(255),                             /*变动后存放地点             */
   ASSBB028             INTEGER,                                   /*变动后使用状况             */
   ASSBB029             INTEGER,                                   /*变动后增加方式             */
   ASSBB030             NUMBER(4),                                 /*变动后数量                 */
   ASSBB031             INTEGER,                                   /*变动后使用人               */
   ASSBB032             NUMBER(16,2),                              /*变动后原币原值             */
   ASSBB033             NUMBER(16,2),                              /*变动后本币原值             */
   ASSBB034             NUMBER(16,2),                              /*变动后累计折旧             */    
   ASSBB035             NUMBER(4) ,                                /*变动后使用年               */
   ASSBB036             NUMBER(2),                                 /*变动后使用月               */
   ASSBB037             NUMBER(5,4) ,                              /*变动后净残值率             */
   ASSBB038             NUMBER(16,2),                              /*变动后净残值               */
   ASSBB039             NUMBER(18,3) ,                              /*变动后总工作量             */
   ASSBB040             NUMBER(16,2),                              /*变动后减值准备             */
   ASSBB041             NUMBER(16,2),                              /*本期折旧额                 */
   ASSBB042             VARCHAR2(1),                               /*折旧方法                   */
   ASSBB043             VARCHAR2(255),                             /*变动原因                   */
   ASSBB044             NUMBER(16,2),                              /*清理收入                   */
   ASSBB045             NUMBER(16,2),                              /*清理费用                   */
   ASSBB046             VARCHAR2(1)                      not null, /*生成凭证                   */ 
   ASSBB047             INTEGER                                    /*资产类别ID                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_ASSBB primary key (ASSBB_ID)
);
create unique index AK_TB_ASSBB on TB_ASSBB (ASSBB001,ASSBB006);
create sequence SEQ_TB_ASSBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSBB to public;
grant index  on TB_ASSBB to public;
grant update on TB_ASSBB to public; 
grant delete on TB_ASSBB to public;  
grant insert on TB_ASSBB to public; 
grant select on SEQ_TB_ASSBB to public;   