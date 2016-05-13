/*
================================================================================
��ṹ����:TB_PMTMA
��ṹ����:ȯ���ŵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTMA;
drop index AK_TB_PMTMA;
drop table TB_PMTMA;
create table TB_PMTMA  (
   PMTMA_ID             INTEGER                         not null,  /*ȯ���ŵ�ID                   */
   PMTMA001             INTEGER                         not null,  /*����ID                       */
   PMTMA002             VARCHAR2(30)                    not null,  /*���ŵ���                     */
   PMTMA003             DATE                            not null,  /*��������                     */
   PMTMA004             VARCHAR2(30),                              /*�ͻ�����                     */
   PMTMA005             VARCHAR2(30),                              /*�ͻ��绰                     */
   PMTMA006             INTEGER                                 ,  /*����Ӫ����֯                 */
   PMTMA007             INTEGER                                 ,  /*���Ų���ID                   */
   PMTMA008             INTEGER                                 ,  /*������ԱID                   */
   PMTMA009             VARCHAR2(255),                             /*��ע                         */
   PMTMA010             NUMBER(30),                                /*����ȯ����                   */
   PMTMA011             NUMBER(12,2),                              /*����ȯ�����                 */
   PMTMA012             INTEGER,                                   /*¼����ID                     */
   PMTMA013             DATE,                                      /*¼������                     */
   PMTMA014             INTEGER,                                   /*�����ID                     */
   PMTMA015             DATE,                                      /*�������                     */
   PMTMA016             VARCHAR2(1)                     not null,  /*���״̬                     */
   PMTMA017             NUMBER(20,2),                              /*Ӧ��ȯ���ϼ�               */
   PMTMA018             NUMBER(20,2),                              /*ʵ��ȯ���ϼ�               */
   PMTMA019             INTEGER,                                   /*ȯ��ID                       */
   PMTMA020             INTEGER,                                   /*������ID                     */
   PMTMA021             VARCHAR2(2),                               /*��������                     */
   PMTMA022             VARCHAR2(1),                                   /*��ȯ��ʽ              */
   PMTMA023             INTEGER,                                   /*Ӧ��ȯ����                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                     */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                 */
   CREATE_DATE          DATE,                                      /*��������                     */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                     */
   MODI_DATE            DATE,                                      /*�޸�����                     */
   FLAG                 NUMBER,                                    /*����״̬                     */
   constraint PK_TB_PMTMA primary key (PMTMA_ID)				                  
);
create unique index AK_TB_PMTMA on TB_PMTMA (PMTMA002);
create sequence SEQ_TB_PMTMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMA to public;
grant index  on TB_PMTMA to public;
grant update on TB_PMTMA to public; 
grant delete on TB_PMTMA to public;  
grant insert on TB_PMTMA to public; 
grant select on SEQ_TB_PMTMA to public;   