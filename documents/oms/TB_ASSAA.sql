/*
================================================================================
表结构代码:TB_ASSAA
表结构名称:固定资产卡片主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_ASSAA;
drop index AK_TB_ASSAA;
drop table TB_ASSAA;
create table TB_ASSAA  (
   ASSAA_ID             INTEGER                         not null,   /*卡片ID               */
   ASSAA001             VARCHAR2(10)                    not null,  /*卡片编号             */
   ASSAA002             VARCHAR2(30)                    not null,  /*资产编码             */
   ASSAA003             VARCHAR2(60)                    not null,  /*资产名称             */
   ASSAA004             VARCHAR2(100),                             /*规格型号             */
   ASSAA005             INTEGER,                                   /*类别编码ID             */
   ASSAA006             VARCHAR2(100),                             /*存放地点             */
   ASSAA007             INTEGER                                 ,  /*使用状况ID             */
   ASSAA008             INTEGER                                 ,  /*增加方式ID             */
   ASSAA009             VARCHAR2(1)                     not null,  /*折旧方法             */
   ASSAA010             INTEGER                                 ,  /*使用人ID               */
   ASSAA011             NUMBER(4),                                 /*数量                 */
   ASSAA012             NUMBER(16,2),                              /*单位折旧             */
   ASSAA013             INTEGER                         not null,  /*管理部门ID             */
   ASSAA014             VARCHAR2(1)                    not null,  /*折旧承担部门          */
   ASSAA015             DATE                           not null,  /*开始使用日期          */
   ASSAA016             NUMBER(4),                                /*使用年                */
   ASSAA017             NUMBER(2),                                 /*使用月份              */
   ASSAA018             NUMBER(2),                                 /*已计提月份            */
   ASSAA019             NUMBER(18,3),                                 /*工作总量              */
   ASSAA020             NUMBER(10),                                /*累计工作量            */
   ASSAA021             VARCHAR2(4),                                /*工作量单位            */
   ASSAA022             NUMBER(5,4),                               /*月折旧率              */
   ASSAA023             NUMBER(16,2),                              /*月折旧额              */
   ASSAA024             INTEGER,                                   /*币种ID                  */
   ASSAA025             NUMBER(5,4),                              /*汇率                  */
   ASSAA026             NUMBER(16,2),                               /*原币原值              */
   ASSAA027             NUMBER(16,2),                              /*本币原值              */
   ASSAA028             NUMBER(16,2),                              /*累计折旧              */
   ASSAA029             NUMBER(16,2),                              /*净额                  */
   ASSAA030             NUMBER(16,2),                              /*减值准备              */
   ASSAA031             NUMBER(16,2),                              /*净值                  */
   ASSAA032             NUMBER(5,4),                              /*净残值率              */
   ASSAA033             NUMBER(16,2),                               /*净残值                */
   ASSAA034             VARCHAR2(1),                              /*是否新增              */    
   ASSAA035             DATE                            not null,  /*卡片日期              */
   ASSAA036             NUMBER(16,2),                              /*年折旧额              */
   ASSAA037             VARCHAR2(1),,                              /*生成凭证              */
   ASSAA038             INTEGER,                                   /*初始化单别              */
   CREATE_USER          VARCHAR2(12),                               /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_ASSAA primary key (ASSAA_ID)
);
create unique index AK_TB_ASSAA on TB_ASSAA (ASSAA001);
create sequence SEQ_TB_ASSAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAA to public;
grant index  on TB_ASSAA to public;
grant update on TB_ASSAA to public; 
grant delete on TB_ASSAA to public;  
grant insert on TB_ASSAA to public; 
grant select on SEQ_TB_ASSAA to public;   