/*
================================================================================
表结构代码:TB_SALZA
表结构名称:销售单主表外键表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALZA;
drop index AK_TB_SALZA;
drop table TB_SALZA;
create table TB_SALZA  (
   SALZA_ID             INTEGER                         not null,  /*销售单主表外键表ID */
   SALZA001             INTEGER                         not null,  /*销售单ID           */
   SALZA002             INTEGER                                 ,  /*单别ID           */
   SALZA003             VARCHAR2(3)                             ,  /*单别代码         */
   SALZA004             VARCHAR2(30)                            ,  /*单据名称         */
   SALZA005             INTEGER                                 ,  /*公司ID           */
   SALZA006             VARCHAR2(16)                            ,  /*公司代码         */
   SALZA007             VARCHAR2(20)                            ,  /*公司简称         */
   SALZA008             INTEGER                                 ,  /*销售组织ID       */
   SALZA009             VARCHAR2(16)                            ,  /*营运组织代码     */
   SALZA010             VARCHAR2(30)                            ,  /*营运组织简称     */
   SALZA011             INTEGER                                 ,  /*销售订单ID       */
   SALZA012             VARCHAR2(30)                            ,  /*销售订单号       */
   SALZA013             INTEGER                                 ,  /*销售凭证种类ID   */
   SALZA014             VARCHAR2(4)                             ,  /*凭证种类代码       */
   SALZA015             VARCHAR2(30)                            ,  /*凭证种类名称       */
   SALZA016             VARCHAR2(1)                             ,  /*凭证种类业务类型  */
   SALZA017             INTEGER                                 ,  /*摊位ID           */
   SALZA018             VARCHAR2(100)                            ,  /*摊位编号           */
   SALZA019             VARCHAR2(100)                            ,  /*摊位描述           */
   SALZA020             INTEGER                                 ,  /*租赁合同ID       */
   SALZA021             VARCHAR2(30)                            ,  /*合同号              */
   SALZA022             INTEGER,                                   /*租赁商户ID       */
   SALZA023             VARCHAR2(10) ,                             /*客商号             */
   SALZA024             VARCHAR2(255)   ,                           /*客商简称           */
   SALZA025             VARCHAR2(255),                              /*纳税人登记号        */
   SALZA026             VARCHAR2(30),                              /*负责人电话          */
   SALZA027             VARCHAR2(80),                              /*商户全称            */
   SALZA028             INTEGER,                                   /*主品牌ID(系列)      */
   SALZA029             VARCHAR2(10),                              /*系列代码           */
   SALZA030             VARCHAR2(100),                              /*系列名称           */
   SALZA031             INTEGER,                                   /*经营小类ID       */
   SALZA032             VARCHAR2(10),                              /*经营小类代码       */
   SALZA033             VARCHAR2(30),                              /*经营小类名称       */
   SALZA034             INTEGER,                                   /*客户ID           */
   SALZA035             VARCHAR2(10) ,                             /*客户号             */
   SALZA036             VARCHAR2(40)   ,                           /*客户简称           */
   SALZA037             INTEGER,                                   /*客户合同号ID     */
   SALZA038             VARCHAR2(30),                              /*客户合同号          */
   SALZA039             INTEGER,                                   /*送货客户ID       */
   SALZA040             VARCHAR2(10) ,                             /*送货客户号             */
   SALZA041             VARCHAR2(40)   ,                           /*送货客户简称           */
   SALZA042             INTEGER,                                   /*导购员           */
   SALZA043             VARCHAR2(12),                              /*导购员帐号           */
   SALZA044             VARCHAR2(30),                              /*导购员中文名         */
   SALZA045             INTEGER,                                   /*折扣人           */
   SALZA046             VARCHAR2(12),                              /*折扣人帐号           */
   SALZA047             VARCHAR2(30),                              /*折扣人中文名         */
   SALZA048             INTEGER,                                   /*证件类型ID       */
   SALZA049             VARCHAR2(4),                               /*证件类型代码       */
   SALZA050             VARCHAR2(30),                              /*证件类型名称       */
   SALZA051             INTEGER,                                   /*录入人ID         */
   SALZA052             VARCHAR2(12),                              /*录入人帐号           */
   SALZA053             VARCHAR2(30),                              /*录入人中文名         */
   SALZA054             INTEGER,                                   /*审核人ID         */
   SALZA055             VARCHAR2(12),                              /*审核人帐号           */
   SALZA056             VARCHAR2(30),                              /*审核人中文名         */
   SALZA057             VARCHAR2(255),                             /*打印备注           */
   SALZA058             VARCHAR2(100),                             /*门牌号           */
   FLAG                 NUMBER,                                    /*资料状态         */
   constraint PK_TB_SALZA primary key (SALZA_ID)
);
create unique index AK_TB_SALZA on TB_SALZA (SALZA001);
create sequence SEQ_TB_SALZA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZA to public;
grant index  on TB_SALZA to public;
grant update on TB_SALZA to public; 
grant delete on TB_SALZA to public;  
grant insert on TB_SALZA to public; 
grant select on SEQ_TB_SALZA to public;   