/*
================================================================================
��ṹ����:TB_PUBHG
��ṹ����:�Զ��������Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHG;
drop index AK_TB_PUBHG;
drop table TB_PUBHG;
create table TB_PUBHG  (
   PUBHG_ID             INTEGER                         not null,  /*�Զ��������ID    */
   PUBHG001             VARCHAR2(2)                     not null,  /*�Զ�������� 3.���أ�4.���5.����     */
   PUBHG002             VARCHAR2(8)                     not null,  /*�Զ����������루������룩  */
   PUBHG003             VARCHAR2(32)                    not null,  /*�Զ������������ �����������ƣ�*/
   PUBHG004             VARCHAR2(32)                    not null,  /*�Զ������������  */
   PUBHG005             INTEGER,                                   /*��Ʒ����ID        */ 
   PUBHG006             INTEGER,                                   /*��Ʒ�����Զ���ID  */
   PUBHG007             VARCHAR2(100)                           ,  /*����1  */
   PUBHG008             VARCHAR2(100)                           ,  /*����2  */
   PUBHG009             VARCHAR2(100)                           ,  /*����3  */
   PUBHG010             VARCHAR2(100)                           ,  /*����4  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHG primary key (PUBHG_ID)
);
create unique index AK_TB_PUBHG on TB_PUBHG (PUBHG002);
create sequence SEQ_TB_PUBHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHG to public;
grant index  on TB_PUBHG to public;
grant update on TB_PUBHG to public; 
grant delete on TB_PUBHG to public;  
grant insert on TB_PUBHG to public; 
grant select on SEQ_TB_PUBHG to public;   