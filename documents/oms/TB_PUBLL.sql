/*
================================================================================
��ṹ����:TB_PUBLL
��ṹ����:��ƿ�Ŀ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLL;
drop index AK_TB_PUBLL;
drop table TB_PUBLL;
create table TB_PUBLL  (
   PUBLL_ID             INTEGER                         not null,  /*��ƿ�Ŀ������ID     */
   PUBLL001             INTEGER                         not null,  /*��Ŀ����ID           */
   PUBLL002             INTEGER                         not null,  /*����������ID         */
   PUBLL003             VARCHAR2(1)                     not null,  /*�Ƿ������           */
   PUBLL004             NUMBER(2)                       not null,  /* ���           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLL primary key (PUBLL_ID)
);
create unique index AK_TB_PUBLL on TB_PUBLL (PUBLL001,PUBLL002);
create sequence SEQ_TB_PUBLL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLL to public;
grant index  on TB_PUBLL to public;
grant update on TB_PUBLL to public; 
grant delete on TB_PUBLL to public;  
grant insert on TB_PUBLL to public; 
grant select on SEQ_TB_PUBLL to public;   