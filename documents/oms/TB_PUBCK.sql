/*
================================================================================
��ṹ����:TB_PUBCK
��ṹ����:�ͻ���������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PUBCK;
drop index AK_TB_PUBCK;
drop table TB_PUBCK;
create table TB_PUBCK  (
   PUBCK_ID             INTEGER                         not null,  /*�ͻ���������ID     */
   PUBCK001             INTEGER                         not null,  /*����ID             */
   PUBCK002             NUMBER(18,2),                              /*�ͻ����Ŷ��       */
   PUBCK003             NUMBER(18,2),                              /*��ʹ�ö��         */
   PUBCK004             VARCHAR2(255),                             /*�ͻ���ʽ           */
   PUBCK005             VARCHAR2(1),                               /*�ܿط�ʽ           */
   PUBCK006             VARCHAR2(255),                             /*��ע               */
   PUBCK007             INTEGER                         not null,  /*�ڲ����ˣ���˾��   */
   PUBCK008             INTEGER                         not null,  /*ҵ��Ա             */
   PUBCK009             VARCHAR2(1)                     not null,  /*Ĭ�������ʽ       */
   PUBCK010             NUMBER(18,2),                              /*�������           */
   PUBCK011             NUMBER(18,2),                              /*�������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER ,                                   /*����״̬           */
   constraint PK_TB_PUBCK primary key (PUBCK_ID)
);
create unique index AK_TB_PUBCK on TB_PUBCK (PUBCK001,FLAG);
create sequence SEQ_TB_PUBCK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCK to public;
grant index  on TB_PUBCK to public;
grant update on TB_PUBCK to public; 
grant delete on TB_PUBCK to public;  
grant insert on TB_PUBCK to public; 
grant select on SEQ_TB_PUBCK to public;   