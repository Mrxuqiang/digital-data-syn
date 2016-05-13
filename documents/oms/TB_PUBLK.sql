/*
================================================================================
表结构代码:TB_PUBLK
表结构名称:会计科目主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLK;
drop index AK_TB_PUBLK;
drop table TB_PUBLK;
create table TB_PUBLK  (
   PUBLK_ID             INTEGER                         not null,  /*会计科目ID           */
   PUBLK001             INTEGER                         not null,  /*会计科目方案ID               */
   PUBLK002             VARCHAR2(30)                    not null,  /*科目代码             */
   PUBLK003             VARCHAR2(40)                    not null,  /*科目中文             */
   PUBLK004             VARCHAR2(40),                              /*科目英文             */
   PUBLK005             INTEGER                         not null,  /*科目类型ID           */
   PUBLK006             VARCHAR2(2)                     not null,  /*余额方向             */
   PUBLK007             VARCHAR2(2)                     not null,  /*现金分类             */
   PUBLK008             INTEGER                         not null,  /*默认币种ID           */
   PUBLK009             NUMBER(2)                       not null,  /*科目层级             */
   PUBLK010             VARCHAR2(1),                               /*是否末级             */
   PUBLK011             VARCHAR2(1),                               /*是否停用             */
   PUBLK012             VARCHAR2(1),                               /*封存                 */
   PUBLK013             VARCHAR2(4)                       not null,  /*生效年度             */
   PUBLK014             VARCHAR2(2),                                  /*停用年度             */
   PUBLK016             VARCHAR2(2)                      not null,  /*生效期间             */
   PUBLK015             VARCHAR2(4),                                 /*停用期间             */
   PUBLK017             VARCHAR2(4),                                 /*创建年度             */
   PUBLK018             VARCHAR2(2),                                 /*创建期间             */
   PUBLK019             VARCHAR2(1),                               /*发生额方向控制       */
   PUBLK020             VARCHAR2(1),                               /*余额方向控制         */
   PUBLK021             VARCHAR2(1),                               /*账薄余额双向显示     */
   PUBLK022             VARCHAR2(1),                               /*数量核算             */
   PUBLK023             INTEGER,                                   /*计算单位ID           */
   PUBLK024             VARCHAR2(1),                               /*是否核销科目         */
   PUBLK025             INTEGER,                                   /*创建公司ID           */
   PUBLK026             INTEGER,                                   /*创建核算账套ID       */
   PUBLK027             VARCHAR2(40),                              /*子ID                 */ 
   PUBLK028             VARCHAR2(40),                              /*父ID                 */
   PUBLK029             VARCHAR2(255),                             /*显示名称            */
   PUBLK030             VARCHAR2(15),                              /*助记码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLK primary key (PUBLK_ID)
);
create unique index AK_TB_PUBLK on TB_PUBLK (PUBLK001,PUBLK002);
create sequence SEQ_TB_PUBLK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLK to public;
grant index  on TB_PUBLK to public;
grant update on TB_PUBLK to public; 
grant delete on TB_PUBLK to public;  
grant insert on TB_PUBLK to public; 
grant select on SEQ_TB_PUBLK to public;   