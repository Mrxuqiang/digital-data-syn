/*
================================================================================
表结构代码:TB_CONDA
表结构名称:合同终止主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONDA;
drop index AK_TB_CONDA;
drop table TB_CONDA;
create table TB_CONDA  (
   CONDA_ID             INTEGER                         not null,  /*合同终止ID          */
   CONDA001             INTEGER                         not null,  /*公司ID              */
   CONDA002             INTEGER                         not null,  /*营运组织ID          */
   CONDA003             INTEGER                         not null,  /*合同ID              */
   CONDA004             NUMBER(6,1)                     not null,  /*版本号              */
   CONDA005             DATE                            not null,  /*签订日期            */
   CONDA006             VARCHAR2(30)                    not null,  /*对方签约人          */
   CONDA007             INTEGER                         not null,  /*合同类型ID          */
   CONDA008             INTEGER                         not null,  /*经营商户ID          */
   CONDA009             INTEGER                         not null,  /*结算商户ID          */
   CONDA010             INTEGER                         not null,  /*摊位ID              */
   CONDA011             DATE                            not null,  /*计租起日            */   #modify ouwx 2010/2/26
   CONDA012             DATE                            not null,  /*租赁止日            */
   CONDA013             INTEGER                         not null,  /*付款方式ID          */
   CONDA014             VARCHAR2(16),                              /*展帐单ID            */
   CONDA015             NUMBER(5),                                 /*提前收款天数        */
   CONDA016             VARCHAR2(1),                               /*是否代收银          */
   CONDA017             VARCHAR2(1),                               /*POS使用方式         */
   CONDA018             INTEGER,                                   /*返款方式ID          */
   CONDA019             NUMBER(5),                                 /*交款期限(天)        */
   CONDA020             NUMBER(12,2),                              /*滞纳金率            */
   CONDA021             INTEGER,                                   /*续签关联合同ID      */
   CONDA022             INTEGER,                                   /*业务人员ID          */
   CONDA023             VARCHAR2(255),                             /*备注                */
   CONDA024             DATE,                                      /*终止日期            */
   CONDA025             VARCHAR2(1)                     not null,  /*状态                */
   CONDA026             VARCHAR2(1),                               /*是否签核            */
   CONDA027             VARCHAR2(30),                              /*签核单号            */
   CONDA028             VARCHAR2(1),                               /*签核码              */
   CONDA029             INTEGER,                                   /*录入人ID            */
   CONDA030             DATE,                                      /*录入日期            */
   CONDA031             INTEGER,                                   /*审核人ID            */
   CONDA032             DATE,                                      /*审核日期            */
   CONDA033             VARCHAR2(80),                              /*商户全称            */
   CONDA034             VARCHAR2(30),                              /*负责人              */
   CONDA035             VARCHAR2(30),                              /*负责人电话          */
   CONDA036             VARCHAR2(30),                              /*传真                */
   CONDA037             VARCHAR2(20),                              /*纳税人登记号        */
   CONDA038             INTEGER                         not null,  /*经营大类ID          */
   CONDA039             INTEGER                         not null,  /*经营中类ID          */
   CONDA040             INTEGER                         not null,  /*经营小类ID          */
   CONDA041             INTEGER                         not null,  /*主品牌ID            */
   CONDA042             INTEGER                         not null,  /*终止人ID            */
   CONDA043             INTEGER                         not null,  /*终止原因ID          */
   CONDA044             VARCHAR2(80),                              /*文档编号            */
   CONDA045             VARCHAR2(1)                     not null,  /*摊位类型            */
   CONDA046             INTEGER                         not null,  /*业务部门ID          */
   CONDA047             INTEGER                         not null,  /*楼栋ID              */
   CONDA048             INTEGER                         not null,  /*楼层ID              */
   CONDA049             VARCHAR2(30)                    not null,  /*合同号              */
   CONDA050             DATE                            not null,  /*租赁起日            */   #modify ouwx 2010/2/26
   CONDA051             DATE                            not null,  /*变更日期            */   #modify ouwx 2010/2/26
   CONDA052             NUMBER(5),                                 /*自动延期(月)        */   add ouwx 2010/12/05
   CONDA053             NUMBER(5),                                 /*提前延期天数        */   add ouwx 2010/12/05
   CONDA054             DATE,					   /*延期最近执行日      */   add ouwx 2010/12/05
   CONDA055             VARCHAR2(400),                             /*装修材料处置        */   add ouwx 2011/12/21
   CONDA056             VARCHAR2(800),                             /*撤场说明            */   add ouwx 2011/12/21
   CONDA057             DATE,                                      /*计费截止日期        */   add ouwx 2011/12/21 
   CONDA058             INTEGER,                                   /*合同等级ID          */  add ouwx 2012/02/14   
   CONDA059             VARCHAR2(40),                              /*经营客商简称        */  add ouwx 2012/04/09   
   CONDA060             VARCHAR2(40),                              /*结算客商简称        */  add ouwx 2012/04/09    
   CONDA061             INTEGER                         not null,  /*品牌ID              */
   CONDA062             DATE                            not null,  /*截止时间            */
   CONDA063             NUMBER(22,2),                              /*合同单价            */ 
   CONDA064             VARCHAR2(30),                              /*公司代码            */
   CONDA065             VARCHAR2(60),                             /*承租方注册地址（或住址）            */
   CONDA066             VARCHAR2(30),                             /*承租方法定代表人（负责人）            */
   CONDA067             VARCHAR2(30),                             /*承租方身份证号码（组织机构代码证）            */
   CONDA068             VARCHAR2(30),                             /*承租方法定代表人（负责人）-联系方式            */
   CONDA069             VARCHAR2(30),                             /*承租方联系人名            */
   CONDA070             VARCHAR2(60),                             /*承租方联系地址            */
   CONDA071             VARCHAR2(30),                             /*承租方联系电话            */
   CONDA072             VARCHAR2(60),                             /*担保方注册地址（或住址）            */
   CONDA073             VARCHAR2(30),                             /*担保方法定代表人（负责人）            */
   CONDA074             VARCHAR2(30),                             /*担保方身份证号码（组织机构代码证）            */
   CONDA075             VARCHAR2(30),                             /*担保方法定代表人（负责人）-联系方式            */
   CONDA076             VARCHAR2(30),                             /*承租方授权代表（委托代签人）            */
   CONDA077             VARCHAR2(30),                             /*承租方授权代表（委托代签人）身份证            */
   CONDA078             VARCHAR2(30),                  not null,  /*商业主体             */
   CONDA079             VARCHAR2(13),                             /*SAP合同号            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONDA primary key (CONDA_ID)
);
create unique index AK_TB_CONDA on TB_CONDA (CONDA002,CONDA003);
create sequence SEQ_TB_CONDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDA to public;
grant index  on TB_CONDA to public;
grant update on TB_CONDA to public; 
grant delete on TB_CONDA to public;  
grant insert on TB_CONDA to public; 
grant select on SEQ_TB_CONDA to public;   