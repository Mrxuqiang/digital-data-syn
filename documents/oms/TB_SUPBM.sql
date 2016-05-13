/*
================================================================================
��ṹ����:TB_SUPBM
��ṹ����:��ʷ�����ʾ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBM;
drop index AK_TB_SUPBM;
drop table TB_SUPBM;
create table TB_SUPBM  (
   SUPBM000             VARCHAR2(8)                     not null,  /*��������                 */
   SUPBM001             VARCHAR2(30)                    not null,  /*ͼֽ���                 */
   SUPBM002             VARCHAR2(20)                    not null,  /*̯λ���                 */
   SUPBM003             VARCHAR2(50)                    not null,  /*��ʾ��                   */
   SUPBM004             VARCHAR2(800),                             /*ֵ                       */
   SUPBM005             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬1��        */
   SUPBM006             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬2��        */
   SUPBM007             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬3��        */
   SUPBM008             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬4��        */
   SUPBM009             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬5��        */
   SUPBM010             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬6��        */
   SUPBM011             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬7��        */
   SUPBM012             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬8��        */
   SUPBM013             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬9��        */
   constraint PK_TB_SUPBM primary key (SUPBM000,SUPBM001,SUPBM002,SUPBM003)
);
/*create unique index AK_TB_SUPBM on TB_SUPBM (SUPBM000,SUPBM001,SUPBM002,SUPBM003);*/
create sequence SEQ_TB_SUPBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBM to public;
grant index  on TB_SUPBM to public;
grant update on TB_SUPBM to public; 
grant delete on TB_SUPBM to public;  
grant insert on TB_SUPBM to public; 
grant select on SEQ_TB_SUPBM to public;   
