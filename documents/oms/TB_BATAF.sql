/*
================================================================================
表结构代码:TB_BATAF
表结构名称:批次表主批号、辅批号抢号
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAF;
drop index AK_TB_BATAF;
drop table TB_BATAF;
create table TB_BATAF  (
   BATAF001	            VARCHAR2(15)                 not null,       /*日期          */
   BATAF002	            VARCHAR2(15),                                /*流水号        */
   BATAF003	            VARCHAR2(10),                                /*辅批流水号    */
   BATAF004	            VARCHAR2(30),                                /*备用          */
   BATAF005	            VARCHAR2(30),                                /*备用          */
);
create unique index AK_TB_BATAF on TB_BATAF (BATAF001);
grant select on TB_BATAF to public;
grant index  on TB_BATAF to public;
grant update on TB_BATAF to public; 
grant delete on TB_BATAF to public;  
grant insert on TB_BATAF to public;   