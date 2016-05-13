/*
================================================================================
��ṹ����:TB_SYSDD
��ṹ����:�û�Ȩ�ޱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDD;
drop index AK_TB_SYSDD;
drop table TB_SYSDD;
create table TB_SYSDD  (
   SYSDD_ID             INTEGER                         not null,  /*�û�Ȩ��ID       */
   SYSDD001             INTEGER                         not null,  /*Ա��ID           */
   SYSDD002             VARCHAR2(20)                    not null,  /*�û�����         */
   SYSDD003             INTEGER                         not null,  /*����ID           */
   SYSDD004             INTEGER                         not null,  /*����ID           */
   SYSDD005             INTEGER,                                   /*�û�����ID       */
   SYSDD006             VARCHAR2(60),                              /*E_Mail           */
   SYSDD007             NUMBER(12,2),                              /*��Ʒ����ۿ��� 20100312 add by zhawj  */
   SYSDD008             NUMBER(12,2),                              /*��Ʒ����ۿ��� 20100815 add by hansf  */
   SYSDD009             NUMBER(12,2),                              /*����Ʒ����ۿ��� 20100815 add by hansf*/
   SYSDD011             VARCHAR2(1),                              /*�˺����ͣ�1.�ڲ���2.�ⲿ��Ĭ��Ϊ1.�ڲ�*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDD primary key (SYSDD_ID)
);
create unique index AK_TB_SYSDD on TB_SYSDD (SYSDD001);
create sequence SEQ_TB_SYSDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDD to public;
grant index  on TB_SYSDD to public;
grant update on TB_SYSDD to public; 
grant delete on TB_SYSDD to public;  
grant insert on TB_SYSDD to public; 
grant select on SEQ_TB_SYSDD to public;   