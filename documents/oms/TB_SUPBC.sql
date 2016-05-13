/*
================================================================================
��ṹ����:TB_SUPBC
��ṹ����:��ͼֽ���ݶ���θ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBC;
drop index AK_TB_SUPBC;
drop table TB_SUPBC;
create table TB_SUPBC  (
   SUPBC001             VARCHAR2(30)                    not null,  /*ͼֽ���                          */
   SUPBC002             INTEGER                         not null,  /*������                          */
   SUPBC003             INTEGER                         not null,  /*��ߵ����(�������±�)            */
   SUPBC004             NUMBER(12,2)                    not null,  /*���X����                         */
   SUPBC005             NUMBER(12,2)                    not null,  /*���Y����                         */
   SUPBC090             VARCHAR2(200),                             /*��ע                              */
   constraint PK_TB_SUPBC primary key (SUPBC001,SUPBC002,SUPBC003)
);
/*create unique index AK_TB_SUPBC on TB_SUPBC (SUPBC001,SUPBC003);*/
create sequence SEQ_TB_SUPBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBC to public;
grant index  on TB_SUPBC to public;
grant update on TB_SUPBC to public; 
grant delete on TB_SUPBC to public;  
grant insert on TB_SUPBC to public; 
grant select on SEQ_TB_SUPBC to public;   
