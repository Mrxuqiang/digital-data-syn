/*
================================================================================
��ṹ����:TB_SALCC
��ṹ����:����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALCC;
drop index AK_TB_SALCC;
drop table TB_SALCC;
create table TB_SALCC  (
   SALCC_ID             INTEGER                         not null,  /*���������ID   */
   SALCC001             INTEGER                         not null,  /*���ID         */
   SALCC002             INTEGER                         not null,  /*���۶���ID       */
   SALCC003             NUMBER(12,2),                              /*������         */
   SALCC004             NUMBER(12,2),                              /*���˽��         */
   SALCC005             NUMBER(12,2),                              /*�ѳ���         */
   SALCC006             NUMBER(12,2),                              /*�������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALCC primary key (SALCC_ID)
);
create index AK_TB_SALCC on TB_SALCC (SALCC001,SALCC002);
create sequence SEQ_TB_SALCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCC to public;
grant index  on TB_SALCC to public;
grant update on TB_SALCC to public; 
grant delete on TB_SALCC to public;  
grant insert on TB_SALCC to public; 
grant select on SEQ_TB_SALCC to public;   