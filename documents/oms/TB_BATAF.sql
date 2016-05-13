/*
================================================================================
��ṹ����:TB_BATAF
��ṹ����:���α������š�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATAF;
drop index AK_TB_BATAF;
drop table TB_BATAF;
create table TB_BATAF  (
   BATAF001	            VARCHAR2(15)                 not null,       /*����          */
   BATAF002	            VARCHAR2(15),                                /*��ˮ��        */
   BATAF003	            VARCHAR2(10),                                /*������ˮ��    */
   BATAF004	            VARCHAR2(30),                                /*����          */
   BATAF005	            VARCHAR2(30),                                /*����          */
);
create unique index AK_TB_BATAF on TB_BATAF (BATAF001);
grant select on TB_BATAF to public;
grant index  on TB_BATAF to public;
grant update on TB_BATAF to public; 
grant delete on TB_BATAF to public;  
grant insert on TB_BATAF to public;   