/*
================================================================================
表结构代码:TB_SERDB
表结构名称:安装服务单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDB;
drop index AK_TB_SERDB;
drop table TB_SERDB;
create table TB_SERDB  (
   SERDB_ID             INTEGER                 not null,              /*安装服务明细ID      */
   SERDB001             INTEGER                 not null,              /*安装服务单ID        */
   SERDB002             INTEGER                 not null,              /*商品编号            */
   SERDB003             INTEGER                                        /*维度1               */
   SERDB004             INTEGER                                        /*维度2               */
   SERDB005             INTEGER                                        /*维度3               */
   SERDB006             INTEGER                                        /*维度4               */
   SERDB007             INTEGER                                        /*维度5               */
   SERDB008             INTEGER                                        /*单位id               */
   SERDB009             NUMBER(12,2)                                   /*发货数量           */
   SERDB010             NUMBER(12,2)                                   /*签收数量           */
   SERDB011             NUMBER(12,2)                                   /*搬运数量           */
   SERDB012             NUMBER(12,2)                                   /*安装数量           */
   SERDB013             NUMBER(12,2)                                   /*搬运分值            */
   SERDB014             NUMBER(12,2)                                   /*安装分值            */
   SERDB015             NUMBER(12,2)                                   /*拆装分值            */
   SERDB016             NUMBER(12,2)                                   /*打包分值           */
   SERDB017             INTEGER                 NOT  NULL,             /*来源单据明细ID 排车单商品明细ID*/    
   SERDB018             VARCHAR2(1),                                   /*方向           */              
   SERDB019             VARCHAR2(1),                                   /*是否组装品           */   
   SERDB020             VARCHAR2(1),                                   /*是否成分             */   
   SERDB021             INTEGER,                                       /*所属组装品ID      */  
   SERDB022             VARCHAR2(30),				       /*子套件对应随机码  */
   SERDB023             NUMBER(12,2),                                  /*拣货数量          */
   SERDB024             VARCHAR2(1),                                   /*商品服务属性      */   
   SERDB025             VARCHAR2(255),                                 /*备注              */   
   CREATE_USER          VARCHAR2(12),                                  /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门         */                               
   CREATE_DATE          DATE,                                          /*建立日期             */
   MODIFIER             VARCHAR2(12),                                  /*修改人员             */
   MODI_DATE            DATE,                                          /*修改日期             */
   FLAG                 NUMBER(1),                                     /*资料状态             */
   constraint PK_TB_SERDB primary key (SERDB_ID)
);
--create unique index AK_TB_SERDB on TB_SERDB (SERDB002,SERDB003,SERDB004,SERDB005,SERDB006,SERDB007);  --mark by hansf
create sequence SEQ_TB_SERDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDB to public;
grant index  on TB_SERDB to public;
grant update on TB_SERDB to public; 
grant delete on TB_SERDB to public;  
grant insert on TB_SERDB to public; 
grant select on SEQ_TB_SERDB to public;   