/*
================================================================================
��ṹ����:TB_SUPBA
��ṹ����:¥��ͼֽ���ϱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBA;
drop index AK_TB_SUPBA;
drop table TB_SUPBA;
create table TB_SUPBA  (
   SUPBA001             VARCHAR2(30)                    not null,  /*ͼֽ���            */
   SUPBA002             VARCHAR2(40)                    not null,  /*ͼֽ����            */
   SUPBA003             INTEGER                         not null,  /*Ӫ����֯ID          */
   SUPBA004             VARCHAR2(16)                    not null,  /*Ӫ����֯���        */
   SUPBA005             INTEGER                         not null,  /*¥��ID              */
   SUPBA006             VARCHAR2(10)                    not null,  /*¥�����            */
   SUPBA007             INTEGER                         not null,  /*¥��ID              */
   SUPBA008             VARCHAR2(10)                    not null,  /*¥����            */
   SUPBA009             NUMBER(12,2)                    not null,  /*ͼֽ���            */
   SUPBA010             NUMBER(12,2)                    not null,  /*ͼֽ�߶�            */
   SUPBA011             NUMBER(12,2)                    not null,  /*ͼֽ������          */
   SUPBA090             VARCHAR2(200),                             /*��ע                */
   constraint PK_TB_SUPBA primary key (SUPBA001)
);
/*create unique index AK_TB_SUPBA on TB_SUPBA (SUPBA001);*/
create sequence SEQ_TB_SUPBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBA to public;
grant index  on TB_SUPBA to public;
grant update on TB_SUPBA to public; 
grant delete on TB_SUPBA to public;  
grant insert on TB_SUPBA to public; 
grant select on SEQ_TB_SUPBA to public;   