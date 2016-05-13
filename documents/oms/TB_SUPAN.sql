/*
================================================================================
表结构代码:TB_SUPAN
表结构名称:客商变更主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAN;
drop index AK_TB_SUPAN;
drop table TB_SUPAN;
create table TB_SUPAN  (
   SUPAN_ID             INTEGER                         not null,  /*客商变更ID          */
   SUPAN001             INTEGER                         not null,  /*客商ID              */
   SUPAN002             NUMBER(3)                       not null,  /*版本号              */
   SUPAN003             VARCHAR2(40)                    not null,  /*客商简称            */
   SUPAN004             VARCHAR2(80)                    not null,  /*客商全称            */
   SUPAN005             VARCHAR2(1),                               /*是否商户            */
   SUPAN006             VARCHAR2(1),                               /*是否供应商          */
   SUPAN007             VARCHAR2(1),                               /*是否客户            */
   SUPAN008             INTEGER                         not null,  /*资料存放组织ID      */
   SUPAN009             INTEGER                         not null,  /*客商分类ID          */
   SUPAN010             INTEGER                         not null,  /*企业性质ID          */
   SUPAN011             VARCHAR2(255),                             /*经营范围            */
   SUPAN012             VARCHAR2(30),                              /*法人代表            */
   SUPAN013             VARCHAR2(30),                              /*法人电话            */
   SUPAN014             VARCHAR2(30),                              /*总经理              */
   SUPAN015             VARCHAR2(30),                              /*总经理电话          */
   SUPAN016             VARCHAR2(30),                              /*经营人              */
   SUPAN017             VARCHAR2(30),                              /*经营人电话          */
   SUPAN018             VARCHAR2(30),                              /*营销负责人          */
   SUPAN019             VARCHAR2(60),                              /*营销E_Mail          */
   SUPAN020             VARCHAR2(60),                              /*公司网址            */
   SUPAN021             INTEGER,                                   /*税种ID              */
   SUPAN022             VARCHAR2(20),                              /*纳税人登记号        */
   SUPAN023             NUMBER(12,2),                              /*注册资金            */
   SUPAN024             VARCHAR2(30),                              /*传真                */
   SUPAN025             INTEGER,                                   /*经营形态ID          */
   SUPAN026             VARCHAR2(10),                              /*发票邮编            */
   SUPAN027             VARCHAR2(255),                             /*发票地址            */
   SUPAN028             VARCHAR2(10),                              /*邮政编码            */
   SUPAN029             VARCHAR2(255),                             /*公式地址            */
   SUPAN030             VARCHAR2(10),                              /*邮寄邮编            */
   SUPAN031             VARCHAR2(255),                             /*邮寄地址            */
   SUPAN032             INTEGER,                                   /*录入人ID            */
   SUPAN033             DATE,                                      /*录入日期            */
   SUPAN034             INTEGER,                                   /*审核人ID            */
   SUPAN035             DATE,                                      /*审核日期            */
   SUPAN036             VARCHAR2(1)                     not null,  /*审核状态            */
   SUPAN037             VARCHAR2(30),                              /*负责人电话          */
   SUPAN038             VARCHAR2(1)                     not null,  /*质保金交纳方式1.依小类 2.依最高额 3.依标准  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAN primary key (SUPAN_ID)
);
create unique index AK_TB_SUPAN on TB_SUPAN (SUPAN001,SUPAN002);
create sequence SEQ_TB_SUPAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAN to public;
grant index  on TB_SUPAN to public;
grant update on TB_SUPAN to public; 
grant delete on TB_SUPAN to public;  
grant insert on TB_SUPAN to public; 
grant select on SEQ_TB_SUPAN to public;   