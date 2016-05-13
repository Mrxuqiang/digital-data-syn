/*
================================================================================
��ṹ����:TB_SUPBH
��ṹ����:�����ʾ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBH;
drop index AK_TB_SUPBH;
drop table TB_SUPBH;
create table TB_SUPBH  (
   SUPBH001             VARCHAR2(30)                    not null,  /*ͼֽ���                */
   SUPBH002             VARCHAR2(20)                    not null,  /*̯λ���                */
   SUPBH003             VARCHAR2(50)                    not null,  /*��ʾ��                  */
   SUPBH004             VARCHAR2(800),                             /*ֵ                      */
   SUPBH005             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬1��       */
   SUPBH006             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬2��       */
   SUPBH007             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬3��       */
   SUPBH008             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬4��       */
   SUPBH009             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬5��       */
   SUPBH010             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬6��       */
   SUPBH011             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬7��       */
   SUPBH012             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬8��       */
   SUPBH013             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬9��       */
   constraint PK_TB_SUPBH primary key (SUPBH001,SUPBH002,SUPBH003)
);
/*create unique index AK_TB_SUPBH on TB_SUPBH (SUPBH001,SUPBH002,SUPBH003);*/
create sequence SEQ_TB_SUPBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBH to public;
grant index  on TB_SUPBH to public;
grant update on TB_SUPBH to public; 
grant delete on TB_SUPBH to public;  
grant insert on TB_SUPBH to public; 
grant select on SEQ_TB_SUPBH to public;   
