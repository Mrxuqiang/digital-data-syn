/*
================================================================================
��ṹ����:TB_SUPBN
��ṹ����:��ʷHINT��ʾ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBN;
drop index AK_TB_SUPBN;
drop table TB_SUPBN;
create table TB_SUPBN  (
   SUPBN000             VARCHAR2(8)                     not null,  /*��������           */
   SUPBN001             VARCHAR2(30)                    not null,  /*ͼֽ���           */
   SUPBN002             VARCHAR2(20)                    not null,  /*̯λ���           */
   SUPBN003             VARCHAR2(50)                    not null,  /*��ʾ��             */
   SUPBN004             VARCHAR2(800),                             /*ֵ                 */
   SUPBN005             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬1��  */
   SUPBN006             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬2��  */
   SUPBN007             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬3��  */
   SUPBN008             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬4��  */
   SUPBN009             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬5��  */
   SUPBN010             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬6��  */
   SUPBN011             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬7��  */
   SUPBN012             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬8��  */
   SUPBN013             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬9��  */
   constraint PK_TB_SUPBN primary key (SUPBN000,SUPBN001,SUPBN002,SUPBN003)
);
/*create unique index AK_TB_SUPBN on TB_SUPBN (SUPBN000,SUPBN001,SUPBN002,SUPBN003);*/
create sequence SEQ_TB_SUPBN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBN to public;
grant index  on TB_SUPBN to public;
grant update on TB_SUPBN to public; 
grant delete on TB_SUPBN to public;  
grant insert on TB_SUPBN to public; 
grant select on SEQ_TB_SUPBN to public;   
