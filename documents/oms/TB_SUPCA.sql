/*
================================================================================
表结构代码:TB_SUPCA
表结构名称:商户线索主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPCA;
drop index AK_TB_SUPCA;
drop table TB_SUPCA;
create table TB_SUPCA  (
   SUPCA_ID             INTEGER                         not null,  /*商户线索ID          */
   SUPCA001             INTEGER                         not null,  /*单别ID              */
   SUPCA002             VARCHAR2(30)                    not null,  /*线索单号            */
   SUPCA003             DATE                            not null,  /*登记日期            */
   SUPCA004             INTEGER                         not null,  /*登记营运组织ID      */
   SUPCA005             VARCHAR2(40)                    not null,  /*商户简称            */
   SUPCA006             VARCHAR2(80)                    not null,  /*商户全称            */
   SUPCA007             VARCHAR2(1)                     not null,  /*线索来源            */
   SUPCA008             INTEGER,                                   /*招商活动ID          */
   SUPCA009             VARCHAR2(100),                             /*备注                */
   SUPCA010             INTEGER,                                   /*企业性质ID          */
   SUPCA011             VARCHAR2(255),                             /*经营范围            */
   SUPCA012             VARCHAR2(30),                              /*法人代表            */
   SUPCA013             VARCHAR2(30),                              /*法人电话            */
   SUPCA014             VARCHAR2(30),                              /*总经理              */
   SUPCA015             VARCHAR2(30),                              /*总经理电话          */
   SUPCA016             VARCHAR2(30),                              /*经营人              */
   SUPCA017             VARCHAR2(30),                              /*经营人电话          */
   SUPCA018             VARCHAR2(30),                              /*营销负责人          */
   SUPCA019             VARCHAR2(30),                              /*负责人电话          */
   SUPCA020             VARCHAR2(60),                              /*营销E_Mail          */
   SUPCA021             VARCHAR2(60),                              /*公司网址            */
   SUPCA022             VARCHAR2(20),                              /*纳税人登记号        */
   SUPCA023             INTEGER,                                   /*进项税种ID          */
   SUPCA024             NUMBER(12,2),                              /*注册资金            */
   SUPCA025             VARCHAR2(30),                              /*传真                */
   SUPCA026             INTEGER,                                   /*经营形态ID          */
   SUPCA027             VARCHAR2(10),                              /*发票邮编            */
   SUPCA028             VARCHAR2(255),                             /*发票地址            */
   SUPCA029             VARCHAR2(10),                              /*邮政编码            */
   SUPCA030             VARCHAR2(255),                             /*公司地址            */
   SUPCA031             VARCHAR2(10),                              /*邮寄邮编            */
   SUPCA032             VARCHAR2(255),                             /*邮寄地址            */
   SUPCA033             NUMBER(12,2),                              /*期望月平米租金      */
   SUPCA034             NUMBER(12,2),                              /*期望租赁面积(M2)    */
   SUPCA035             VARCHAR2(60),                              /*期望租赁位置        */
   SUPCA036             VARCHAR2(30),                              /*期望付款方式        */
   SUPCA037             VARCHAR2(30),                              /*期望经营分类        */
   SUPCA038             VARCHAR2(100),                             /*其它                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPCA primary key (SUPCA_ID)
);
create unique index AK_TB_SUPCA on TB_SUPCA (SUPCA002);
create sequence SEQ_TB_SUPCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPCA to public;
grant index  on TB_SUPCA to public;
grant update on TB_SUPCA to public; 
grant delete on TB_SUPCA to public;  
grant insert on TB_SUPCA to public; 
grant select on SEQ_TB_SUPCA to public;   