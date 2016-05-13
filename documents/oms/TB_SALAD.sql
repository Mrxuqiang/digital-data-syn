/*
================================================================================
��ṹ����:TB_SALAD
��ṹ����:�ͻ�Э�鵥��Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALAD;
drop index AK_TB_SALAD;
drop table TB_SALAD;
create table TB_SALAD  (
   SALAD_ID             INTEGER                         not null,  /*�ͻ�Э�鵥��ƷID    */
   SALAD001             INTEGER                         not null,  /*�ͻ�Э�鵥ID        */
   SALAD002             INTEGER                         not null,  /*��ƷID              */
   SALAD003             INTEGER                         not null,  /*��λID              */
   SALAD004             INTEGER                         not null,  /*��Ӧ��ID            */
   SALAD005             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ            */
   SALAD006             NUMBER(12,2),                              /*�ɹ���              */
   SALAD007             NUMBER(12,2),                              /*�������Ƿ���(%)     */
   SALAD008             NUMBER(12,2),                              /*ԭ�ۼ�              */
   SALAD009             NUMBER(12,2),                              /*�ۿ���(%)           */
   SALAD010             NUMBER(12,2),                              /*������              */
   SALAD011             NUMBER(12,2),                              /*ԭ�������(%)       */
   SALAD012             NUMBER(12,2),                              /*�½������(%)       */
   SALAD013             NUMBER(12,2),                              /*��Ӧ�̷�̯����(%)   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SALAD primary key (SALAD_ID)
);
create unique index AK_TB_SALAD on TB_SALAD (SALAD001,SALAD002);
create sequence SEQ_TB_SALAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAD to public;
grant index  on TB_SALAD to public;
grant update on TB_SALAD to public; 
grant delete on TB_SALAD to public;  
grant insert on TB_SALAD to public; 
grant select on SEQ_TB_SALAD to public;   