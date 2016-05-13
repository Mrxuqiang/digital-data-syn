/*
================================================================================
��ṹ����:TB_PUBEB
��ṹ����:�����ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBEB;
drop index AK_TB_PUBEB;
drop table TB_PUBEB;
create table TB_PUBEB  (
   PUBEB_ID             INTEGER                         not null,  /*��һ���ID     */
   PUBEB001             INTEGER                         not null,  /*Դ����ID         */
   PUBEB002             INTEGER                         not null,  /*Ŀ�ı���ID         */
   PUBEB003             VARCHAR2(1)                     not null,  /*����ģʽ       */
   PUBEB004             NUMBER(16,4),                              /*����������   */    
   PUBEB005            VARCHAR2(1)                     not null,  /*ƥ��ģʽ       */
   PUBEB006             NUMBER(1),                                 /*����С��λ��   */ 
   CREBTE_USER          VARCHAR2(12),                              /* ������Ա                   */
   USER_GROUP           VARCHAR2(12),                              /* ������Ա����                */                               
   CREBTE_DATE          DATE,                                      /* ��������                    */
   MODIFIER             VARCHAR2(12),                              /* �޸���Ա                    */
   MODI_DATE            DATE,                                      /* �޸�����                    */
   FLAG                 NUMBER(1),                                 /* ����״̬                    */
   constraint PK_TB_PUBEB primary key (PUBEB_ID)
);
create unique index AK_TB_PUBEB on TB_PUBEB (PUBEB001,PUBEB002);
create sequence SEQ_TB_PUBEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBEB to public;
grant index  on TB_PUBEB to public;
grant update on TB_PUBEB to public; 
grant delete on TB_PUBEB to public;  
grant insert on TB_PUBEB to public; 
grant select on SEQ_TB_PUBEB to public;   