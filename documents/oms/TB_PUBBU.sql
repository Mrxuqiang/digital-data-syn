/*CREATE BY SUNDAN
================================================================================
表结构代码:TB_PUBBU
表结构名称:商户资质抽检单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBBU;
drop index AK_TB_PUBBU;
drop table TB_PUBBU;
create table TB_PUBBU  (
		
 
   PUBBU_ID             INTEGER                         not null,  /*商户资质抽检单ID         */
   PUBBU001             INTEGER                         not null,  /*楼层ID             */
   PUBBU002             INTEGER                         not null,  /*品类         */
   PUBBU003             INTEGER				not null,  /*品牌           */
   PUBBU004             VARCHAR2(1)                     not null,  /*合规性      0.合规 1.不合规       */

   /*-----------------------------------商户资质----------------------------------------------------*/
   PUBBU005             INTEGER				        ,  /*商户资质授权书ID       */
   PUBBU006             VARCHAR2(1),                               /*商户资质授权书类型         */
   PUBBU007             VARCHAR2(255),                             /*商户资质授权书图片路径         */
   PUBBU008             DATE,                                      /*截止日期（商户资质授权书）         */
   PUBBU009             VARCHAR2(1),                               /*合规性（商户资质授权书）   0.合规 1.不合规         */
   PUBBU010             VARCHAR2(255),                             /*备注（商户资质授权书）         */

   PUBBU011             INTEGER				        ,  /*营业执照ID（商户资质营业执照）       */
   PUBBU012             VARCHAR2(1),                               /*商户资质营业执照类型         */
   PUBBU013             VARCHAR2(10),                              /*商户资质营业执照年检         */
   PUBBU014             VARCHAR2(255),                              /*商户资质营业执照图片路径         */
   PUBBU015             DATE,                                      /*截止日期（商户资质营业执照）         */
   PUBBU016             VARCHAR2(1),                               /*合规性（商户资质营业执照）   0.合规 1.不合规         */
   PUBBU017             VARCHAR2(255),                             /*备注（商户资质营业执照）         */ 
   
   PUBBU018             INTEGER				        ,  /*商户资质税务登记证ID       */
   PUBBU019             VARCHAR2(1),                               /*商户资质税务登记证类型         */
   PUBBU020             VARCHAR2(255),                             /*商户资质税务登记证图片路径         */
   PUBBU021             DATE,                                      /*商户资质税务登记证有效期         */
   PUBBU022             VARCHAR2(1),                               /*合规性（商户资质税务登记证）   0.合规 1.不合规         */
   PUBBU023             VARCHAR2(255),                             /*备注（商户资质税务登记证）         */    

   PUBBU024             INTEGER				        ,  /*商户资质负责人身份证ID       */
   PUBBU025             VARCHAR2(1),                               /*商户资质负责人身份证类型         */
   PUBBU026             VARCHAR2(255),                             /*商户资质负责人身份证图片路径         */
   PUBBU027             DATE,                                      /*截止日期（商户资质负责人身份证）         */
   PUBBU028             VARCHAR2(1),                               /*合规性（商户资质负责人身份证）   0.合规 1.不合规         */
   PUBBU029             VARCHAR2(255),                             /*备注（商户资质负责人身份证）         */  
  /*--------------------------------------工厂资质-----------------------------------------------------------------------*/
   PUBBU030             INTEGER				        ,  /*工厂资质营业执照ID       */
   PUBBU031             VARCHAR2(1),                               /*工厂资质营业执照类型         */
   PUBBU032             VARCHAR2(255),                             /*工厂资质营业执照图片路径         */
   PUBBU033             DATE,                                      /*截止日期（工厂资质营业执照）         */
   PUBBU034             VARCHAR2(1),                               /*合规性（工厂资质营业执照）   0.合规 1.不合规         */
   PUBBU035             VARCHAR2(255),                             /*备注（工厂资质营业执照）         */  

   PUBBU036             INTEGER				        ,  /*工厂资质税务登记证ID       */
   PUBBU037             VARCHAR2(1),                               /*工厂资质税务登记证类型         */
   PUBBU038             VARCHAR2(255),                             /*工厂资质税务登记证图片路径         */
   PUBBU039             DATE,                                      /*工厂资质税务登记证有效期         */
   PUBBU040             VARCHAR2(1),                               /*合规性（工厂资质税务登记证）   0.合规 1.不合规         */
   PUBBU041             VARCHAR2(255),                             /*备注（工厂资质税务登记证）         */ 

   PUBBU042             INTEGER				        ,  /*工厂资质组织机构代码证ID       */
   PUBBU043             VARCHAR2(1),                               /*工厂资质组织机构代码证类型         */
   PUBBU044             VARCHAR2(255),                             /*工厂资质组织机构代码证图片路径         */
   PUBBU045             DATE,                                      /*截止日期（工厂资质组织机构代码证）         */
   PUBBU046             VARCHAR2(1),                               /*合规性（工厂资组织机构代码证）   0.合规 1.不合规         */
   PUBBU047             VARCHAR2(255),                             /*备注（工厂资质组织机构代码证）         */ 

   PUBBU048             INTEGER				        ,  /*工厂资质商标注册证ID       */
   PUBBU049             VARCHAR2(1),                               /*工厂资质商标注册证类型         */
   PUBBU050             VARCHAR2(255),                             /*工厂资质商标注册证图片路径         */
   PUBBU051             DATE,                                      /*截止日期（工厂资质商标注册证）         */
   PUBBU052             VARCHAR2(1),                               /*合规性（工厂资商标注册证）   0.合规 1.不合规         */
   PUBBU053             VARCHAR2(255),                             /*备注（工厂资质商标注册证）         */

   PUBBU054             INTEGER				        ,  /*工厂资质检测报告ID       */
   PUBBU055             VARCHAR2(1),                               /*工厂资质检测报告类型         */
   PUBBU056             VARCHAR2(255),                             /*工厂资质检测报告图片路径         */
   PUBBU057             DATE,                                      /*截止日期（工厂资质检测报告）         */
   PUBBU058             VARCHAR2(1),                               /*合规性（工厂资检测报告）   0.合规 1.不合规         */
   PUBBU059             VARCHAR2(255),                             /*备注（工厂资质检测报告）         */

   PUBBU060             INTEGER				        ,  /*工厂资质家具类产品使用说明书ID       */
   PUBBU061             VARCHAR2(1),                               /*工厂资质家具类产品使用说明书类型         */
   PUBBU062             VARCHAR2(255),                             /*工厂资质家具类产品使用说明书图片路径         */
   PUBBU063             DATE,                                      /*工厂资质家具类产品使用说明书有效期         */
   PUBBU064             VARCHAR2(1),                               /*合规性（工厂资质家具类产品使用说明书）   0.合规 1.不合规         */
   PUBBU065             VARCHAR2(255),                             /*备注（工厂资质家具类产品使用说明书）         */

   PUBBU066             INTEGER				        ,  /*工厂资质3C认证书ID       */
   PUBBU067             VARCHAR2(1),                               /*工厂资质3C认证书类型         */
   PUBBU068             VARCHAR2(255),                             /*工厂资质3C认证书图片路径         */
   PUBBU069             DATE,                                      /*截止日期（特定资质3C认证书）         */
   PUBBU070             VARCHAR2(1),                               /*合规性（特定资质3C认证书）   0.合规 1.不合规         */
   PUBBU071             VARCHAR2(255),                             /*备注（特定资质3C认证书）         */

   PUBBU072             INTEGER				        ,  /*工厂资质进口报关卡ID       */
   PUBBU073             VARCHAR2(1),                               /*工厂资质进口报关卡类型         */
   PUBBU074             VARCHAR2(255),                             /*工厂资质进口报关卡图片路径         */
   PUBBU075             DATE,                                      /*工厂资质进口报关卡有效期         */
   PUBBU076             VARCHAR2(1),                               /*合规性（特定资质进口报关卡）   0.合规 1.不合规         */
   PUBBU077             VARCHAR2(255),                             /*备注（特定资质进口报关卡）         */

   PUBBU078             INTEGER				        ,  /*工厂资质其它ID       */
   PUBBU079             VARCHAR2(1),                               /*工厂资质|其它|类型        */
   PUBBU080             VARCHAR2(255),                             /*工厂资质|其它|图片路径         */
   PUBBU081             VARCHAR2(80),                              /*工厂资质|其它|名称        */
   PUBBU083             DATE,                                      /*工厂资质|其它|截止日期       */
   PUBBU084             VARCHAR2(1),                               /*工厂资质|其它|合规性   0.合规 1.不合规         */
   PUBBU085             VARCHAR2(255),                             /*工厂资质|其它|备注         */
   PUBBU086             VARCHAR2(255),                             /*备注        */

   PUBBU087             DATE,                                      /*更新日期         */
   PUBBU088             INTEGER				not null,  /*营运组织id          */
   PUBBU089             INTEGER				not null,  /*商户资质主表ID          */
   PUBBU090             INTEGER				not null,  /*工厂资质主表ID          */
   PUBBU091             INTEGER				not null,  /*系列ID          */
   PUBBU092             VARCHAR2(100),                             /*系列编码         */
   PUBBU093             VARCHAR2(120),                             /*系列名称         */

 /*----------------------------------商户资质-----------------------------------------------------------*/
  /* 产品说明书*/
   PUBBU094             INTEGER				        ,  /*商户资质产品说明书ID       */
   PUBBU095             VARCHAR2(1),                               /*商户资质产品说明书类型         */
   PUBBU096             VARCHAR2(255),                             /*商户资质产品说明书图片路径         */
   PUBBU097             DATE,                                      /*截止日期（商户资质产品说明书）         */
   PUBBU098             VARCHAR2(1),                               /*合规性（商户资质产品说明书）   0.合规 1.不合规         */
   PUBBU099             VARCHAR2(255),                             /*备注（商户资质产品说明书）         */ 

 /* 产品合格证*/
   PUBBU100             INTEGER				        ,  /*商户资质产品合格证ID       */
   PUBBU101             VARCHAR2(1),                               /*商户资质产品合格证类型         */
   PUBBU102             VARCHAR2(255),                             /*商户资质产品合格证图片路径         */
   PUBBU103             DATE,                                      /*截止日期（商户资质产品合格证）         */
   PUBBU104             VARCHAR2(1),                               /*合规性（商户资质产品合格证）   0.合规 1.不合规         */
   PUBBU105             VARCHAR2(255),                             /*备注（商户资质产品合格证）         */ 

    /*3C*/
   PUBBU106             INTEGER				        ,  /*商户资质3CID       */
   PUBBU107             VARCHAR2(1),                               /*商户资质3C类型         */
   PUBBU108             VARCHAR2(255),                             /*商户资质3C图片路径         */
   PUBBU109             DATE,                                      /*截止日期（商户资质3C）         */
   PUBBU110             VARCHAR2(1),                               /*合规性（商户资质3C）   0.合规 1.不合规         */
   PUBBU111             VARCHAR2(255),                             /*备注（商户资质3C）         */ 

   /*报关单*/
   PUBBU112             INTEGER				        ,  /*商户资质报关单ID       */
   PUBBU113             VARCHAR2(1),                               /*商户资质报关单类型         */
   PUBBU114             VARCHAR2(255),                             /*商户资质报关单图片路径         */
   PUBBU115             DATE,                                      /*截止日期（商户资质报关单）         */
   PUBBU116             VARCHAR2(1),                               /*合规性（商户资质报关单）   0.合规 1.不合规         */
   PUBBU117             VARCHAR2(255),                             /*备注（商户资质报关单）         */ 

   /*质量明示卡*/
   PUBBU118             INTEGER				        ,  /*商户资质质量明示卡ID       */
   PUBBU119             VARCHAR2(1),                               /*商户资质质量明示卡类型         */
   PUBBU120             VARCHAR2(255),                             /*商户资质质量明示卡图片路径         */
   PUBBU121             DATE,                                      /*截止日期（商户资质质量明示卡）         */
   PUBBU122             VARCHAR2(1),                               /*合规性（商户资质质量明示卡）   0.合规 1.不合规         */
   PUBBU123             VARCHAR2(255),                             /*备注（商户资质质量明示卡）         */ 

   /*环保证明*/
   PUBBU124             INTEGER				        ,  /*商户资质环保证明      */
   PUBBU125             VARCHAR2(1),                               /*商户资质环保证明类型         */
   PUBBU126             VARCHAR2(255),                             /*商户资质环保证明图片路径         */
   PUBBU127             DATE,                                      /*截止日期（商户资质环保证明）         */
   PUBBU128             VARCHAR2(1),                               /*合规性（商户资质环保证明）   0.合规 1.不合规         */
   PUBBU129             VARCHAR2(255),                             /*备注（商户资质环保证明）         */ 

   /*其它*/
   PUBBU130             INTEGER				        ,  /*商户资质其它       */
   PUBBU131             VARCHAR2(1),                               /*商户资质其它类型         */
   PUBBU132             VARCHAR2(255),                             /*商户资质其它图片路径         */
   PUBBU133             DATE,                                      /*截止日期（商户资质其它）         */
   PUBBU134             VARCHAR2(1),                               /*合规性（商户资质其它）   0.合规 1.不合规         */
   PUBBU135             VARCHAR2(255),                             /*备注（商户资质其它）         */ 

   /*----------------------------------工厂资质----------------------------------------------------------*/
   /*其它*/
   PUBBU136             INTEGER				        ,  /*工厂资质其它(与PUBBU078重复)       */
   PUBBU137             VARCHAR2(1),                               /*工厂资质其它类型（与PUBBU079重复）         */
   PUBBU138             VARCHAR2(255),                             /*工厂资质其它图片路径（与PUBBU080重复）         */
   PUBBU139             DATE,                                      /*截止日期（工厂资质其它）（与PUBBU081重复）          */
   PUBBU140             VARCHAR2(1),                               /*合规性（工厂资质其它）   0.合规 1.不合规  （与PUBBU082重复）       */
   PUBBU141             VARCHAR2(255),                             /*备注（工厂资质其它） （与PUBBU083重复）        */ 

   PUBBU142              VARCHAR2(255),                             /*商户资质|其它|其它备注      */ 
   PUBBU143              VARCHAR2(255),                             /*工厂资质|其它|其它备注      */ 

   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBU primary key (PUBBU_ID)
);
create unique index AK_TB_PUBBU on TB_PUBBU (PUBBU_ID,PUBBU003);
create sequence SEQ_TB_PUBBU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBU to public;
grant index  on TB_PUBBU to public;
grant update on TB_PUBBU to public; 
grant delete on TB_PUBBU to public;  
grant insert on TB_PUBBU to public; 
grant select on SEQ_TB_PUBBU to public;   