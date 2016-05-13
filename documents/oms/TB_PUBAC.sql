/* 20121024 add by gaoxl for 总账页签增加一个参数：科目开窗显示方式 1、仅展开到一级科目；2、定位到上次录入科目
*/
/*                 
================================================================================
表结构代码:TB_PUBAC
表结构名称:财务参数
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBAC;
drop index AK_TB_PUBAC;
drop table TB_PUBAC;
create table TB_PUBAC  (
   PUBAC_ID             INTEGER                         not null,  /*财务参数ID         */
   PUBAC001             INTEGER                         not null,  /*公司ID             */
   PUBAC002             NUMBER(16,2)                    not null,  /*期初坏账余额       */
   PUBAC003             INTEGER                         not null,  /*直接收款单单别           */
   PUBAC004             INTEGER                         not null,  /*预收待抵单别           */
   PUBAC005             VARCHAR2(1),                               /*坏账计提方式           */
   PUBAC006             NUMBER(5,4),                               /*坏账计提比率           */
   PUBAC007             VARCHAR2(1) ,                              /*费用单必须收全款       */
   PUBAC008             INTEGER ,                                  /*出货应收单           */
   PUBAC009             INTEGER,                                   /*销售现金异动码           */
   PUBAC010             INTEGER ,                                  /*代收款应收单别           */
   PUBAC011             INTEGER ,                                  /*预付待抵单别           */
   PUBAC012             INTEGER,                                   /*直接付款单别ID           */
   PUBAC013             INTEGER ,                                  /*经销暂估单别           */
   PUBAC014             INTEGER ,                                  /*经销应付单别           */
   PUBAC015             INTEGER ,                                  /*经销现金异动码           */
   PUBAC016             INTEGER ,                                  /*代销暂估单别           */
   PUBAC017             INTEGER ,                                  /*代销应付单别           */
   PUBAC018             INTEGER ,                                  /*代销现金异动码           */
   PUBAC019             INTEGER ,                                  /*联营暂估单别           */
   PUBAC020             INTEGER,                                   /*联营应付单别           */
   PUBAC021             VARCHAR2(1)                     not null,  /*手工输入           */
   PUBAC022             VARCHAR2(1),                               /*营运组织输入控制 20100824 modi by gaoxl预留字段           */
   PUBAC023             VARCHAR2(1),                               /*编码方式           */
   PUBAC024             NUMBER(2) ,                                /*序号               */
   PUBAC025             VARCHAR2(4)                     not null,  /*启用年度           */
   PUBAC026             VARCHAR2(2)                     not null,  /*启用期间           */
   PUBAC027             VARCHAR2(4)                     not null,  /*现行年度           */
   PUBAC028             VARCHAR2(2)                     not null,  /*现行期间           */
   PUBAC029             VARCHAR2(1)                     not null,  /*是否初始化           */
   PUBAC030             NUMBER(5,4),                               /*预留字段           */
   PUBAC031             VARCHAR2(1)                     not null,  /*出纳管理           */
   PUBAC032             VARCHAR2(4),                               /*预留字段          */
   PUBAC033             VARCHAR2(2) ,                              /*预留字段           */
   PUBAC034             VARCHAR2(4),                               /*科目名称显示方式   */
   PUBAC035             VARCHAR2(1),                               /*外部折算是否需确认 */
   PUBAC036             VARCHAR2(1) ,                              /*凭证金额以千分位显示       */20110308 modi by gaoxl for  VARCHAR2(2)->VARCHAR2(1)
   PUBAC037             VARCHAR2(1),                               /*启用现金异动项      */20110506 modi by gaoxl for VARCHAR2(4) ->VARCHAR2(1)
   PUBAC038             VARCHAR2(1) ,                              /*凭证制单审核不可为同一人     */20110216 modi by gaoxl for VARCHAR2(2)->VARCHAR2(1)
   PUBAC039             VARCHAR2(1) ,                              /*按借贷方排列       */
   PUBAC040             NUMBER(5,4) ,                              /*预留字段           */   
   PUBAC041             INTEGER ,                                  /*代收款现金异动码   */ 
   PUBAC042             INTEGER ,                                  /*联营现金异动码     */ 
   PUBAC043             VARCHAR2(1) ,                              /*应收核销方式       */ 
   PUBAC044             VARCHAR2(1) ,                              /*应付核销方式       */ 
   PUBAC045             INTEGER ,                                  /*费用应收单别       */ 
   PUBAC046             INTEGER ,                                  /*预付单别ID         */   
   PUBAC047             INTEGER ,                                  /*预付异动项ID        */    
   PUBAC048             INTEGER ,                                  /*预收单别ID         */    
   PUBAC049             INTEGER ,                                  /*预收异动项ID        */        
   PUBAC050             INTEGER ,                                  /*默认客户ID  ---20100403 add by zhawj       */  20120508 modi by gaoxl for not null ->可为空
   PUBAC051             VARCHAR2(1)  ,                             /*按成本出货 ---20100403 add by zhawj      */   
   PUBAC052            VARCHAR2(1)  ,                              /*价高先出 ---20100403 add by zhawj       */   --20111014 mark by xiechu  
   PUBAC053             VARCHAR2(1)  ,                             /*价低先出  ---20100403 add by zhawj        */ --20111015 mark by xiechu    
   PUBAC054            VARCHAR2(1)  ,                              /*先进先出  ---20100403 add by zhawj        */  
   PUBAC055            VARCHAR2(1)  ,                              /*后进先出  ---20100403 add by zhawj        */  
   PUBAC056             INTEGER ,                                  /*会员返现现金异动项    */
   PUBAC057             INTEGER ,                                  /*会员返现银行账户     */
   PUBAC058             VARCHAR2(1),                               /*损益结转科目   */
   PUBAC059             INTEGER,                                   /*市场收款单别   */
   PUBAC060             INTEGER,                                   /*手续费异动码 20100724 add by gaoxl   */   
   PUBAC061             INTEGER,                                   /*退货预收退款单别  20100927 add by hansf   */  
   PUBAC062             INTEGER,                                   /*退货预收退款异动码 20100927 add by hansf   */  
   PUBAC063             VARCHAR2(1),                               /*是否优先销售备货*/
   PUBAC064             VARCHAR2(1),                               /*送货时间不足是否下单*/
   PUBAC065             VARCHAR2(1),                               /*摊位是否必须输入*/   
   PUBAC066             INTEGER,                                   /*借款单别ID 20101209 add by gaoxl for OA*/  
   PUBAC067             INTEGER,                                   /*报销单别ID 20101209 add by gaoxl for OA*/ 
   PUBAC068             INTEGER,                                   /*代收银手续费 20101209 add by gaoxl for 建配龙*/   
   PUBAC069             NUMBER(18,2),                              /*调拨费用比例 20110114 add by hansf for 亚博  */       
   PUBAC070             VARCHAR2(1),                               /*生成拣货单模式 20110117 add by xiechun*/
   PUBAC071             VARCHAR2(1),                               /*样品送货发货仓库 20110503 add by xiechun*/
   PUBAC072             VARCHAR2(1),                               /*选择收款方式 20110615 add by gaoxl*/  
   PUBAC073             VARCHAR2(1),                               /*预算控制设置 20110624 add by gaoxl*/  
   PUBAC074             VARCHAR2(1),                               /*选择付款方式 20110713 add by gaoxl*/   
   PUBAC075             INTEGER,                                   /*公司收款单别   */ //20111026 add by gaoxl for 8702     
   PUBAC076             VARCHAR2(1),                               /*科目开窗显示方式   */      
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBAC primary key (PUBAC_ID)
);
create unique index AK_TB_PUBAC on TB_PUBAC (PUBAC001);
create sequence SEQ_TB_PUBAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBAC to public;
grant index  on TB_PUBAC to public;
grant update on TB_PUBAC to public; 
grant delete on TB_PUBAC to public;  
grant insert on TB_PUBAC to public; 
grant select on SEQ_TB_PUBAC to public;   