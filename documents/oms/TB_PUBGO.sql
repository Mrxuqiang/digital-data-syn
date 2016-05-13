查文进 13:58:03
  /*
================================================================================
表结构代码:TB_PUBGO
表结构名称:客商主表
表结构目的:
================================================================================
*/updateCharge

drop sequence SEQ_TB_PUBGO;
drop index AK_TB_PUBGO;
drop table TB_PUBGO;
create table TB_PUBGO  (
   PUBGO_ID             INTEGER                         not null,  /*客商ID             */
   PUBGO001             VARCHAR2(10)                    not null,  /*客商号             */
   PUBGO002             NUMBER(3)                       not null,  /*版本号             */
   PUBGO003             VARCHAR2(40)                    not null,  /*客商简称           */
   PUBGO004             VARCHAR2(80)                    not null,  /*客商全称           */
   PUBGO005             VARCHAR2(1),                               /*是否商户           */ 
   PUBGO006             VARCHAR2(1),                               /*是否供应商         */ 
   PUBGO007             VARCHAR2(1),                               /*是否客户           */ 
   PUBGO008             INTEGER,                                   /*资料存放组织ID     */ 
   PUBGO009             INTEGER                         not null,  /*客商分类ID         */
   PUBGO010             INTEGER,                                   /*企业性质ID         */ 
   PUBGO011             VARCHAR2(255),                             /*经营范围           */ 
   PUBGO012             VARCHAR2(30),                              /*法人代表           */ 
   PUBGO013             VARCHAR2(30),                              /*法人电话           */ 
   PUBGO014             VARCHAR2(30),                              /*总经理             */ 
   PUBGO015             VARCHAR2(30),                              /*总经理电话         */ 
   PUBGO016             VARCHAR2(30),                              /*经营人             */ 
   PUBGO017             VARCHAR2(30),                              /*经营人电话         */ 
   PUBGO018             VARCHAR2(30),                              /*营销负责人         */ 
   PUBGO019             VARCHAR2(60),                              /*营销E_Mail         */ 
   PUBGO020             VARCHAR2(60),                              /*公司网址           */ 
   PUBGO021             INTEGER,                                   /*税种ID             */ 
   PUBGO022             VARCHAR2(20),                              /*纳税人登记号       */ 
   PUBGO023             NUMBER(12,2),                              /*注册资金           */ 
   PUBGO024             VARCHAR2(30),                              /*传真               */ 
   PUBGO025             INTEGER,                                   /*经营形态ID         */  
   PUBGO026             VARCHAR2(10),                              /*发票邮编           */ 
   PUBGO027             VARCHAR2(255),                             /*发票地址           */ 
   PUBGO028             VARCHAR2(10),                              /*邮政编码           */ 
   PUBGO029             VARCHAR2(255),                             /*公司地址           */ 
   PUBGO030             VARCHAR2(10),                              /*邮寄邮编           */ 
   PUBGO031             VARCHAR2(255),                             /*邮寄地址           */ 
   PUBGO032             INTEGER,                                   /*录入人             */ 
   PUBGO033             DATE,                                      /*录入日期           */ 
   PUBGO034             INTEGER,                                   /*审核人             */ 
   PUBGO035             DATE,                                      /*审核日期           */ 
   PUBGO036             VARCHAR2(1)                     not null,  /*审核状态           */
   PUBGO037             VARCHAR2(1),                               /*经营方式           */
   PUBGO038             VARCHAR2(30),                              /*负责人电话         */ 
   PUBGO039             VARCHAR2(1)                     not null,  /*质保金交纳方式1.依小类 2.依最高额 3.依标准  */
   PUBGO040             INTEGER                         not null,  /*采购员             */ 
   PUBGO041             INTEGER                                    /*总公司             */ 
   PUBGO042             INTEGER                                    /*过程模版           */ 
   PUBGO043             VARCHAR2(255),                             /*历史沿革           */ 
   PUBGO044             VARCHAR2(255),                             /*重大事件           */ 
   PUBGO045             VARCHAR2(255),                             /*最近大事           */ 
   PUBGO046             VARCHAR2(255),                             /*银行状况及评价     */ 
   PUBGO047             VARCHAR2(255),                             /*被诉记录           */ 
   PUBGO048             VARCHAR2(255),                             /*付款和拖欠状况     */ 
   PUBGO049             VARCHAR2(255),                             /*担保抵押记录       */ 
   PUBGO050             VARCHAR2(255),                             /*同业评价           */ 
   PUBGO051             VARCHAR2(255),                             /*资信评审报告       */ 
   PUBGO052            NUMBER(12,0),				   /*默认供货天数       */ 
   PUBGO053             NUMBER(12,0),				   /*特定供货周期       */ 
   PUBGO054            VARCHAR2(30),				   /*联系人1 姓名	*/ 
   PUBGO055           VARCHAR2(30),				   /*联系人1-电话	*/
   PUBGO056            VARCHAR2(30),				   /*联系人1-手机	*/
   PUBGO057            VARCHAR2(30),				   /*联系人1-email	*/
   PUBGO058            VARCHAR2(30),				   /*联系人1-职位	*/
   PUBGO059            VARCHAR2(30),				   /*联系人2 姓名	*/ 
   PUBGO060            VARCHAR2(30),				   /*联系人2-电话	*/
   PUBGO061            VARCHAR2(30),				   /*联系人2-手机	*/
   PUBGO062            VARCHAR2(30),				   /*联系人2-email	*/
   PUBGO063            VARCHAR2(30),				   /*联系人2-职位	*/
   PUBGO064            VARCHAR2(30),				   /*联系人3 姓名	*/ 
   PUBGO065           VARCHAR2(30),				   /*联系人3-电话	*/
   PUBGO066            VARCHAR2(30),				   /*联系人3-手机	*/
   PUBGO067           VARCHAR2(30),				   /*联系人3-email      */
   PUBGO068            VARCHAR2(30),				   /*联系人3-职位	*/
   PUBGO069            NUMBER(22,6),				   /*订金比率		*/   
   PUBGO071            VARCHAR2(1),				   /*是否其他		*/ 
   PUBGO072            INTEGER,				           /*楼栋ID		*/ 
   PUBGO073            INTEGER,				           /*楼层ID		*/  
   PUBGO074            VARCHAR2(1),				   /*是否公开		*/ --20110523 add by xiechun
   PUBGO075            INTEGER,				           /*结算方式		*/ --20110715 add by xiechun
   PUBGO076            VARCHAR2(20),				   /*POS机商户编码      */ --20111026 add by gaoxl
   PUBGO077            VARCHAR2(60),				   /*POS机商户名称      */ --20111026 add by gaoxl
   PUBGO078            INTEGER,				           /*交易币种ID		*/ --20120401 add by xiechun
   PUBGO079            VARCHAR2(1),                                /*是否物流客户       */ --20120727 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PUBGO primary key (PUBGO_ID)
);
create unique index AK_TB_PUBGO on TB_PUBGO (PUBGO001);
create sequence SEQ_TB_PUBGO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGO to public;
grant index  on TB_PUBGO to public;
grant update on TB_PUBGO to public; 
grant delete on TB_PUBGO to public;  
grant insert on TB_PUBGO to public; 
grant select on SEQ_TB_PUBGO to public;   
