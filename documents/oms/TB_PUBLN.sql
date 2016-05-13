/*
================================================================================
表结构代码:TB_PUBLN
表结构名称:会计科目变更主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLN;
drop index AK_TB_PUBLN;
drop table TB_PUBLN;
create table TB_PUBLN  (
   PUBLN_ID             INTEGER                         not null,  /*会计科目变更ID       */
   PUBLN001             INTEGER                         not null,  /*会计科目ID           */
   PUBLN002             INTEGER                         not null,  /*会计科目方案ID       */
   PUBLN003             VARCHAR2(30)                    not null,  /*科目代码             */
   PUBLN004             VARCHAR2(40)                    not null,  /*科目中文             */
   PUBLN005             VARCHAR2(40)                    not null,  /*科目英文             */
   PUBLN006             INTEGER                         not null,  /*科目类型ID           */
   PUBLN007             VARCHAR2(2)                     not null,  /*余额方向             */
   PUBLN008             VARCHAR2(2)                     not null,  /*现金分类             */
   PUBLN009             INTEGER                         not null,  /*默认币种ID           */
   PUBLN010             NUMBER(2)                       not null,  /*科目层级             */
   PUBLN011             VARCHAR2(1),                               /*是否末级             */
   PUBLN012             VARCHAR2(1),                               /*是否停用             */
   PUBLN013             NUMBER(4)                       not null,  /*生效年度             */
   PUBLN014             NUMBER(2)                       not null,  /*生效期间             */
   PUBLN015             NUMBER(4),                                 /*终止年度             */
   PUBLN016             NUMBER(2),                                 /*终止期间             */
   PUBLN017             NUMBER(4),                                 /*创建年度             */
   PUBLN018             NUMBER(2),                                 /*创建期间             */
   PUBLN019             VARCHAR2(1),                               /*发生额方向控制       */
   PUBLN020             VARCHAR2(1),                               /*余额方向控制         */
   PUBLN021             VARCHAR2(1),                               /*账薄余额双向显示     */
   PUBLN022             VARCHAR2(1),                               /*数量核算             */
   PUBLN023             INTEGER,                                   /*计算单位ID           */
   PUBLN024             VARCHAR2(1),                               /*是否核销科目         */
   PUBLN025             INTEGER,                                   /*创建公司ID           */
   PUBLN026             INTEGER,                                   /*创建核算账套ID       */
   PUBLN027             VARCHAR2(2)                     not null,  /*变更类型             */
   PUBLN028             INTEGER,                                   /*变更公司ID           */
   PUBLN029             INTEGER,                                   /*变更核算账套ID       */
   PUBLN030             INTEGER                         not null,  /*目的会计科目ID       */
   PUBLN031             INTEGER,                                   /*变更人员ID           */
   PUBLN032             DATE,                                      /*变更日期             */                                                                       
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLN primary key (PUBLN_ID)
);
create unique index AK_TB_PUBLN on TB_PUBLN (PUBLN001,PUBLN002,PUBLN013,PUBLN014);
create sequence SEQ_TB_PUBLN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLN to public;
grant index  on TB_PUBLN to public;
grant update on TB_PUBLN to public; 
grant delete on TB_PUBLN to public;  
grant insert on TB_PUBLN to public; 
grant select on SEQ_TB_PUBLN to public;   