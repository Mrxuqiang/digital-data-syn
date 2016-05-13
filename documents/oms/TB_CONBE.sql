/*
================================================================================
表结构代码:TB_CONBE
表结构名称:合同主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBE;
drop index AK_TB_CONBE;
drop table TB_CONBE;
create table TB_CONBE  (
   CONBE_ID             INTEGER                         not null,  /*合同ID              */
   CONBE001             INTEGER                         not null,  /*公司ID              */
   CONBE002             INTEGER                         not null,  /*营运组织ID          */
   CONBE003             VARCHAR2(30)                    not null,  /*合同号              */
   CONBE004             NUMBER(6,1)                     not null,  /*版本号              */
   CONBE005             DATE                            not null,  /*签订日期            */
   CONBE006             VARCHAR2(30)                            ,  /*对方签约人          */
   CONBE007             INTEGER                         not null,  /*合同类型ID          */
   CONBE008             INTEGER                         not null,  /*经营商户ID          */
   CONBE009             INTEGER                         not null,  /*结算商户ID          */
   CONBE010             INTEGER                         not null,  /*摊位ID              */
   CONBE011             DATE                            not null,  /*计租起日            */  #modify ouwx 2010/2/26
   CONBE012             DATE                            not null,  /*租赁止日            */
   CONBE013             INTEGER                         not null,  /*付款方式ID          */
   CONBE014             INTEGER,                                   /*展帐单ID            */
   CONBE015             NUMBER(5),                                 /*提前收款天数        */
   CONBE016             VARCHAR2(1),                               /*是否代收银          */
   CONBE017             VARCHAR2(1),                               /*POS使用方式         */
   CONBE018             INTEGER,                                   /*返款方式ID          */
   CONBE019             NUMBER(5),                                 /*交款期限(天)        */
   CONBE020             NUMBER(12,2),                              /*滞纳金率            */
   CONBE021             INTEGER,                                   /*续签关联合同ID      */
   CONBE022             INTEGER                         not null,  /*业务人员ID          */
   CONBE023             VARCHAR2(255),                             /*备注                */
   CONBE024             DATE,                                      /*终止日期            */
   CONBE025             VARCHAR2(1)                     not null,  /*状态                */
   CONBE026             VARCHAR2(1),                               /*是否签核            */
   CONBE027             VARCHAR2(30),                              /*签核单号            */
   CONBE028             VARCHAR2(1),                               /*签核码              */
   CONBE029             INTEGER,                                   /*录入人ID            */
   CONBE030             DATE,                                      /*录入日期            */
   CONBE031             INTEGER,                                   /*审核人ID            */
   CONBE032             DATE,                                      /*审核日期            */
   CONBE033             VARCHAR2(80),                              /*商户全称            */
   CONBE034             VARCHAR2(30),                              /*负责人              */
   CONBE035             VARCHAR2(30),                              /*负责人电话          */
   CONBE036             VARCHAR2(30),                              /*传真                */
   CONBE037             VARCHAR2(20),                              /*纳税人登记号        */
   CONBE038             INTEGER                                 ,  /*经营大类ID          */
   CONBE039             INTEGER                         not null,  /*经营中类ID          */
   CONBE040             INTEGER                                 ,  /*经营小类ID          */
   CONBE041             INTEGER                         not null,  /*主品牌ID            */
   CONBE042             VARCHAR2(80),                              /*文档编号            */
   CONBE043             VARCHAR2(1)                     not null,  /*摊位类型            */
   CONBE044             INTEGER                         not null,  /*业务部门ID          */
   CONBE045             VARCHAR2(60),                              /*签约地点            */
   CONBE046             INTEGER                         not null,  /*楼栋ID              */
   CONBE047             INTEGER                         not null,  /*楼层ID              */
   CONBE048             INTEGER                         not null,  /*税种ID              */ 
   CONBE049             DATE                            not null,  /*租赁起日            */  #modify ouwx 2010/2/26
   CONBE050             NUMBER(5),                                 /*自动延期(月)        */  add ouwx 2010/12/05
   CONBE051             NUMBER(5),                                 /*提前延期天数        */  add ouwx 2010/12/05
   CONBE052             DATE,					   /*延期最近执行日      */  add ouwx 2010/12/05
   CONBE053             INTEGER,                                   /*销售区域ID          */  add ouwx 2011/11/22
   CONBE054             VARCHAR2(800),                             /*合同说明            */  add ouwx 2011/12/21
   CONBE055             INTEGER,                                   /*合同等级ID          */  add gaoxl 2011/12/29
   CONBE056             VARCHAR2(40),                              /*经营客商简称        */  add ouwx 2012/04/09   
   CONBE057             VARCHAR2(40),                              /*结算客商简称        */  add ouwx 2012/04/09   
   CONBE058             INTEGER                         not null,  /*品牌ID              */
   CONBE059             DATE                            not null,  /*截止时间            */
   CONBE060             NUMBER(22,2),                              /*合同单价            */ 
   CONBE061             VARCHAR2(30),                              /*公司代码            */
   CONBE062             VARCHAR2(60),                             /*承租方注册地址（或住址）            */
   CONBE063             VARCHAR2(30),                             /*承租方法定代表人（负责人）            */
   CONBE064             VARCHAR2(30),                             /*承租方身份证号码（组织机构代码证）            */
   CONBE065             VARCHAR2(30),                             /*承租方法定代表人（负责人）-联系方式            */
   CONBE066             VARCHAR2(30),                             /*承租方联系人名            */
   CONBE067             VARCHAR2(60),                             /*承租方联系地址            */
   CONBE068             VARCHAR2(30),                             /*承租方联系电话            */
   CONBE069             VARCHAR2(60),                             /*担保方注册地址（或住址）            */
   CONBE070             VARCHAR2(30),                             /*担保方法定代表人（负责人）            */
   CONBE071             VARCHAR2(30),                             /*担保方身份证号码（组织机构代码证）            */
   CONBE072             VARCHAR2(30),                             /*担保方法定代表人（负责人）-联系方式            */
   CONBE073             VARCHAR2(30),                             /*承租方授权代表（委托代签人）            */
   CONBE074             VARCHAR2(30),                             /*承租方授权代表（委托代签人）身份证            */
   CONBE075             VARCHAR2(30),                  not null,  /*商业主体             */
   CONBE076             VARCHAR2(13),                             /*SAP合同号            */
   CONBE079             VARCHAR2(100),                             /*门牌号           */
   CONBE080             VARCHAR2(1),                               /*允许账扣            */ 
   CONBE081             VARCHAR2(1),                               /*价格类型            */ 
   CONBE082             NUMBER(22,2),                              /*最低折扣率            */ 
   CONBE083             NUMBER(22,2),                              /*标准应收质保金            */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 INTEGER,                                   /*资料状态            */
   constraint PK_TB_CONBE primary key (CONBE_ID)
);
create unique index AK_TB_CONBE on TB_CONBE (CONBE002,CONBE003);
create sequence SEQ_TB_CONBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBE to public;
grant index  on TB_CONBE to public;
grant update on TB_CONBE to public; 
grant delete on TB_CONBE to public;  
grant insert on TB_CONBE to public; 
grant select on SEQ_TB_CONBE to public;   